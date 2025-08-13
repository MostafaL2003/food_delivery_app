import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //GET INSTANCE FROM FIREBASE
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //GET CURREN USER
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //SIGN IN
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      throw Exception(e);
    }
  }

  //SIGN UP
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      throw Exception(e);
    }
  }

  //SIGN OUT
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
