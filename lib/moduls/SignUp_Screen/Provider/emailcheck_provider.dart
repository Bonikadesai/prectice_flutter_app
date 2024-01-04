import 'package:dummy_plant/moduls/SignUp_Screen/Model/email_model.dart';
import 'package:flutter/material.dart';

class Globals extends ChangeNotifier {
  static List<EmailChecck> allEmail = [];

  void addContacts(EmailChecck e) {
    allEmail.add(e);
    notifyListeners();
  }
}
