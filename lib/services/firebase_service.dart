import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  static Future<FirebaseApp?> firebaseInit() async {
    try {
        FirebaseApp app = await Firebase.initializeApp();
        return app;

    } catch(e) {
      return null;

    }

  }

  static Future<User?> signinGoogle() async {
    try {
      // Trigger the authentication flow
      GoogleSignIn signIn = GoogleSignIn(scopes: ["email"]);
      final GoogleSignInAccount? googleUser = await signIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
     UserCredential userCredential =  await FirebaseAuth.instance.signInWithCredential(credential);
     return userCredential.user;

    } catch(e) {
      return null;

    }

  }
}

