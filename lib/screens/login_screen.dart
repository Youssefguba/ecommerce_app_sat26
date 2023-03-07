import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // build method called 60 time/second
  // build User Interface / Widgets / Components
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image

              Image.asset(
                'assets/images/logo.png',
                height: 80,
                width: 80,
              ),

              SizedBox(height: 10),
              // Text Welcome
              Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // empty space
              SizedBox(
                height: 10,
              ),

              // Text Sign In
              Text(
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),

              // TextBox Email
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 16,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'test@gmail.com',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // TextBox Password

              // Sign In Button

              // Divider and Text

              // Button Google

              // Button Facebook

              // Text Clickable Forget Password

              // Row [ Text,  Clickable Text ]
            ],
          ),
        ),
      ),
    );
  }
}
