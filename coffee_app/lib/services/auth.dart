import 'package:firebase_auth/firebase_auth.dart';
import 'package:coffee_app/models/user.dart';

class AuthService {
  final FirebaseAuth
      _auth =
      FirebaseAuth.instance;

  // Create MyUser object based on Firebase User
  MyUser?
      _userfromFirebase(User? user) {
    return user != null
        ? MyUser(uid: user.uid)
        : null;
  }

  // Sign in anonymously
  Future<MyUser?>
      signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userfromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //signin with email and password

  //register with email and password

  //signout
}
