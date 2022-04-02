import 'package:barcode_qr_reader_new_version/models/User_model.dart';
import 'package:barcode_qr_reader_new_version/utils/UserPreferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

showAlertDialog(BuildContext context) {
  final userData = UserPreferences.myUser;

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: const Text("Cancelar"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = FlatButton(
    child: const Text("Abrir IG."),
    onPressed: () {
      launch(userData.urlSocialMedia);
      Navigator.pop(context);
    },
  ); // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(child: Text('Saliendo de la la aplicación')),
    content: const Text(
        "Estas seguro de abrir Instagram? Esto te llevara fuera de la aplición"),
    actions: [
      cancelButton,
      continueButton,
    ],
  ); // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
