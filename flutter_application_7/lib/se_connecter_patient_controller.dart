/*import 'package:flutter/material.dart';
import 'package:flutter_application_7/services/authontification.dart';
import 'package:flutter_application_7/Model/patient.dart';
import 'package:flutter_application_7/showerreurDialog.dart';
import 'package:flutter_application_7/showerreurDialog.dart';

class SeconnecterPatientController {
  var c = Color(0xff011638);
  var d = Color(0xFFe77e4d);
  ShowDialog showdialog = ShowDialog();
  final AuthontificationService _auth = AuthontificationService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String error = '';
  String message = '';
  bool emailVerified = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> get formKey => _formKey;
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void signIn(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      emailVerified = true; // Replace with your email verification logic

      if (emailVerified) {
        String email = emailController.value.text;
        String password = passwordController.value.text;

        dynamic result =
            _auth.signInWithEmailAndPassword(context, email, password);
        if (result == null) {
          error = 'Please supply a valid email';
        } else {
          message = 'probléme de connexion ';
          return showdialog.showErrorDialog(context, message);
        }
      } else {
        Navigator.pushReplacementNamed(context, '/accueil');
      }
    }
  }
}
*/