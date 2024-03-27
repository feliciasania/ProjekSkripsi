import 'dart:developer';

import 'package:encrypt/encrypt.dart';

class AppFunctions {
  String encrypt({required String text}){
    final key = Key.fromSecureRandom(32);
    final iv = IV.fromSecureRandom(16);
    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(text, iv: iv);

    return encrypted.base16;
  }

  String decrypt({required Encrypted encrypt}){
    final key = Key.fromSecureRandom(32);
    final iv = IV.fromSecureRandom(16);
    final encrypter = Encrypter(AES(key));

    final decrypted = encrypter.decrypt(encrypt, iv: iv);

    return decrypted;
  }
}