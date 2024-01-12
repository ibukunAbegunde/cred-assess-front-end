import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices{
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  Future<void> handleGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User canceled the sign-in
      } else {
        // User signed in successfully
        print("User signed in: ${googleUser.displayName}");
      }
    } catch (error) {
      // Handle sign-in errors
      print("Error signing in with Google: $error");
    }
  }

  //google sign in
  signInWithGoogle()async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create a new credential for user
    final AuthCredential credential = GoogleAuthProvider.credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);
        print(credential);
    UserCredential userCre = await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCre.user?.displayName);
    //finally, lets sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}