import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:secoola/appRoutes.dart';

class FirebaseService{
  final _auth=FirebaseAuth.instance;
  final _googlesign =GoogleSignIn();

  String userEmail = "";

  Future<void> loginWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final AccessToken accessToken = result.accessToken!;
        print('Logged in with Facebook! User ID: ${accessToken.userId}');
      } else {
        print('Facebook login failed. Status: ${result.status}');
      }
    } catch (e) {
      print('Error during Facebook login: $e');
    }
  }
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
        Get.toNamed(Routes.Chossetopic);

      }
    }on FirebaseAuthException catch(e){
      print(e.message);

     }

  }
  Signout()async{
    Get.toNamed(Routes.SignPage);
    await _auth.signOut();
    await _googlesign.signOut();
  }

}