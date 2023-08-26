import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService{
  final _auth=FirebaseAuth.instance;
  final _googlesign =GoogleSignIn();
  SignInWithgoogle ()async{
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googlesign
          .signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount
            .authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        await _auth.signInWithCredential(authCredential);
      }
    }on FirebaseAuthException catch(e){
      print(e.message);

     }

  }
  Signout()async{
    await _auth.signOut();
    await _googlesign.signOut();
  }
}