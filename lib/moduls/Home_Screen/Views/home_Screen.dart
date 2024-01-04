import 'package:dummy_plant/moduls/SignUp_Screen/Provider/emailcheck_provider.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: Globals.allEmail.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                Globals.allEmail[index].email.split("@")[0],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(Globals.allEmail[index].pass),
            ),
          );
        },
      ),
    );
  }
}
