// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:encrypt/encrypt.dart' as enc;

String dog(String encryptedJson, String base64Key32Bytes) {
  if (encryptedJson.isEmpty) return encryptedJson;

  // If it’s not JSON (e.g., old unencrypted records), return as-is safely.
  Map<String, dynamic> payload;
  try {
    payload = jsonDecode(encryptedJson) as Map<String, dynamic>;
  } catch (_) {
    return encryptedJson;
  }

  if (!payload.containsKey("iv") || !payload.containsKey("ct")) {
    return encryptedJson;
  }

  final keyBytes = base64.decode(base64Key32Bytes);
  if (keyBytes.length != 32) {
    throw Exception('Encryption key must be 32 bytes (base64 of 32 bytes).');
  }

  final key = enc.Key(Uint8List.fromList(keyBytes));
  final iv = enc.IV.fromBase64(payload["iv"] as String);

  final gcm = enc.Encrypter(enc.AES(key, mode: enc.AESMode.gcm));

  final decrypted = gcm.decrypt(
    enc.Encrypted.fromBase64(payload["ct"] as String),
    iv: iv,
  );

  return decrypted;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
