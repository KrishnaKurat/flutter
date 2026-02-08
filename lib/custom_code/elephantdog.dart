import 'dart:convert';
import 'dart:math';
import 'package:encrypt/encrypt.dart';

class E2EECrypto {
  /// Generates a 32-byte random key and returns it as Base64
  static String generateBase64Key32() {
    final rand = Random.secure();
    final bytes = List<int>.generate(32, (_) => rand.nextInt(256));
    return base64Encode(bytes);
  }

  /// Encrypts plaintext using AES-256-GCM.
  /// Returns JSON string: {"v":1,"iv":"...","ct":"..."}
  static String encryptToJson(String plaintext, String base64Key32Bytes) {
    if (plaintext.isEmpty) return plaintext;

    final key = Key.fromBase64(base64Key32Bytes);
    final iv = IV.fromSecureRandom(12);

    final encrypter = Encrypter(AES(key, mode: AESMode.gcm));
    final encrypted = encrypter.encrypt(plaintext, iv: iv);

    return jsonEncode({
      "v": 1,
      "iv": iv.base64,
      "ct": encrypted.base64,
    });
  }

  /// Decrypts JSON payload produced by encryptToJson.
  /// If the input isn't valid encrypted JSON, returns it unchanged.
  static String decryptFromJson(String encryptedJson, String base64Key32Bytes) {
    if (encryptedJson.isEmpty) return encryptedJson;

    dynamic decoded;
    try {
      decoded = jsonDecode(encryptedJson);
    } catch (_) {
      return encryptedJson; // not JSON, likely plaintext
    }

    if (decoded is! Map) return encryptedJson;
    if (!decoded.containsKey("iv") || !decoded.containsKey("ct"))
      return encryptedJson;

    final key = Key.fromBase64(base64Key32Bytes);
    final iv = IV.fromBase64(decoded["iv"]);

    final encrypter = Encrypter(AES(key, mode: AESMode.gcm));
    return encrypter.decrypt(Encrypted.fromBase64(decoded["ct"]), iv: iv);
  }
}
