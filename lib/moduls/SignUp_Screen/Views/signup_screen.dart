import 'package:dummy_plant/moduls/SignUp_Screen/Model/email_model.dart';
import 'package:dummy_plant/moduls/SignUp_Screen/Provider/emailcheck_provider.dart';
import 'package:dummy_plant/moduls/Utils/utils.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: emailForm,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  email = value;
                },
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text("Please Enter your Email"),
                  hintText: "Your Email Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (value) {
                  pass = value;
                },
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  label: Text("Please Enter Your Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  if (emailForm.currentState!.validate()) {
                    emailForm.currentState!.save();
                    EmailChecck e1 = EmailChecck(
                      email: email!,
                      pass: pass!,
                    );
                    Globals.allEmail.add(e1);
                    emailForm.currentState!.reset();
                    emailController.text = "";
                    passController.text = "";
                  }

                  Navigator.pushNamed(context, "homepage");
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
