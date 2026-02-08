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
import 'dart:math';
import 'package:encrypt/encrypt.dart' as enc;

/// Encrypt plaintext using AES-GCM.
/// Returns JSON string: {"v":1,"iv":"...base64...","ct":"...base64..."}
String elephant(String plaintext, String base64Key32Bytes) {
  if (plaintext.isEmpty) return plaintext;

  final keyBytes = base64.decode(base64Key32Bytes);
  if (keyBytes.length != 32) {
    throw Exception('Encryption key must be 32 bytes (base64 of 32 bytes).');
  }

  final key = enc.Key(Uint8List.fromList(keyBytes));

  // AES-GCM needs a 12-byte nonce/IV
  final iv = enc.IV.fromSecureRandom(12);

  final gcm = enc.Encrypter(enc.AES(key, mode: enc.AESMode.gcm));

  final encrypted = gcm.encrypt(plaintext, iv: iv);

  final payload = <String, dynamic>{
    "v": 1,
    "iv": iv.base64,
    "ct": encrypted.base64,
  };

  return jsonEncode(payload);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
