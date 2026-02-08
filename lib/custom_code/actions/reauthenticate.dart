// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// write the custom action code to reauthenticate a user from firebase and then return true or false on completion
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> reauthenticate(
  String? currentPassword,
  String? email,
) async {
  try {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    // Check if user is logged in
    if (user == null) {
      return false;
    }

    // Check if required parameters are provided
    if (currentPassword == null || currentPassword.isEmpty) {
      return false;
    }

    // Use the provided email or fall back to the current user's email
    String userEmail = email ?? user.email ?? '';

    if (userEmail.isEmpty) {
      return false;
    }

    // Create credential for reauthentication
    AuthCredential credential = EmailAuthProvider.credential(
      email: userEmail,
      password: currentPassword,
    );

    // Reauthenticate the user
    await user.reauthenticateWithCredential(credential);

    return true;
  } on FirebaseAuthException catch (e) {
    // Handle specific Firebase Auth errors
    print('Firebase Auth Error: ${e.code} - ${e.message}');
    return false;
  } catch (e) {
    // Handle any other errors
    print('Reauthentication Error: $e');
    return false;
  }
}
