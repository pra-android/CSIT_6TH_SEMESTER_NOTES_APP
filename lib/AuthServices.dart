import 'package:shared_preferences/shared_preferences.dart';
import 'package:encrypt/encrypt.dart';

class AuthServices {
  final String islogined = "islogined";
  final String username = "username";
  final String userpassword = "userpassword";
  final String useremail = "useremail";

  Future<Encrypted> signuppage(
      String usernames, String userpasswords, String useremails) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    const String secretKey = "abcdefghijklmnop";
    String password = userpasswords;

    final key = Key.fromUtf8(secretKey);
    final iv = IV.fromUtf8(secretKey);

    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

    final encryptedPassword = encrypter.encrypt(password, iv: iv);
    password = encryptedPassword.base64;
    print(password);

    print("Original Password: $userpasswords");
    print("Encrypted Password: ${encryptedPassword.base64}");

    sp.setString(username, usernames);

    sp.setString(userpassword, password);
    sp.setString(useremail, useremails);
    sp.setBool(islogined, true);
    print(usernames);
    print(userpasswords);
    print(useremails);
    print("Password i${sp.getString(userpassword)}}");
    print(userpassword.runtimeType);
    print(encryptedPassword.runtimeType);

    return encryptedPassword;
  }

  Future<bool?> login(String usernames, String passwords, String emails) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final storedPassword = sp.getString(userpassword);
    final storedUsername = sp.getString(username);
    print(storedPassword);
    print(storedPassword.runtimeType);

    final storedemail = sp.getString(useremail);
    try {
      const String secretKey = "abcdefghijklmnop";
      final key = Key.fromUtf8(secretKey);
      final iv = IV.fromUtf8(secretKey);

      //Create an AES encrypter
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
      final decryptedPassword = encrypter.decrypt64(storedPassword!, iv: iv);
      print(decryptedPassword);
      print(decryptedPassword.runtimeType);
      if (storedUsername == usernames &&
          decryptedPassword == passwords &&
          storedemail == emails) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
    }
  }
}
