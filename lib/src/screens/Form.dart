import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFd6ffe2),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                // autofocus: true,
                decoration: new InputDecoration(
                    hintText: "Masukkan email Anda",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: true,
                // autofocus: true,
                decoration: new InputDecoration(
                    hintText: "Masukkan password Anda",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
              ),
              SizedBox(
                height: 45.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: const Size.fromHeight(40), // NEW
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ]),
          ),
        ));
  }
}
