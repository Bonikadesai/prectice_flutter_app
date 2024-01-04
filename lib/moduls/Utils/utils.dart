import 'package:flutter/cupertino.dart';

final GlobalKey<FormState> emailForm = GlobalKey<FormState>();

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

String? email;
String? pass;
