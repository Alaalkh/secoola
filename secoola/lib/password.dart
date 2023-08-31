import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  @override
  _PasswordRecoveryScreenState createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _recoveryCodeController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

  String _recoveryCode = '';
  bool _recoveryCodeSent = false;

  Future<void> _sendRecoveryCode() async {
    String email = _emailController.text.trim();

    try {
      await _auth.sendPasswordResetEmail(email: email);

      setState(() {
        _recoveryCodeSent = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Recovery code sent to $email'),
      ));
    } catch (e) {
      print('Error sending recovery code: $e');
    }
  }

  void _verifyRecoveryCodeAndResetPassword() {
    String enteredCode = _recoveryCodeController.text.trim();
    String newPassword = _newPasswordController.text.trim();

    if (enteredCode == _recoveryCode) {
      // Reset the password using Firebase
      _auth.confirmPasswordReset(
        newPassword: newPassword, code: '',
      ).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Password reset successful!'),
        ));
      }).catchError((error) {
        print('Error resetting password: $error');
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid recovery code.'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Recovery'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _sendRecoveryCode,
              child: Text('Send Recovery Code'),
            ),
            if (_recoveryCodeSent)
              Column(
                children: [
                  SizedBox(height: 16),
                  TextField(
                    controller: _recoveryCodeController,
                    decoration: InputDecoration(labelText: 'Recovery Code'),
                  ),
                  TextField(
                    controller: _newPasswordController,
                    decoration: InputDecoration(labelText: 'New Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _verifyRecoveryCodeAndResetPassword,
                    child: Text('Reset Password'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

