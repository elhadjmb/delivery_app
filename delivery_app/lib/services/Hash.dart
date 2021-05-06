import 'package:crypto/crypto.dart';
import 'dart:convert';

class Hash {
  static String inSHA256(String data) {
    final bytes = utf8.encode(data);
    final digest = sha256.convert(bytes);
    final hashedPassword = digest.toString();
    return hashedPassword;
  }
}
