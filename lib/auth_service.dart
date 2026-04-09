import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Register
  Future<UserCredential> register(String email, String password) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Sign In
  Future<UserCredential> signIn(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Change Password
  Future<void> changePassword(String newPassword) async {
    await _auth.currentUser!.updatePassword(newPassword);
  }

  // Get current user
  User? get currentUser => _auth.currentUser;
}