import 'package:ecommerce_app_sat26/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // build method called 60 time/second
  // build User Interface / Widgets / Components

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),

              // TextBox Password
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 16,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'enter your password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                    ),
                  ),
                ),
              ),

              // Sign In Button
              Container(
                margin: EdgeInsets.all(10),
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    print('Sign In Successfully !');
                  },
                  child: Text('Sign In'),
                ),
              ),

              // Divider and Text
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 0.5,
                      width: MediaQuery.of(context).size.width * 0.25,
                      color: Colors.black,
                    ),
                    Text('OR'),
                    Container(
                      height: 0.5,
                      width: MediaQuery.of(context).size.width * 0.25,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),

              // Button Google
              OutlinedButton.icon(
                onPressed: () {},
                label: Text('Login with Google'),
                icon: Image.asset(
                  'assets/images/google_logo.png',
                  height: 25,
                ),
              ),
              // Button Facebook

              OutlinedButton.icon(
                onPressed: () {},
                label: Text('Login with Facebook'),
                icon: Icon(Icons.facebook),
              ),
              // Text Clickable Forget Password
              TextButton(
                onPressed: () {},
                child: Text('Forget Password?'),
              ),

              // Row [ Text,  Clickable Text ]
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }), (route) => false);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
