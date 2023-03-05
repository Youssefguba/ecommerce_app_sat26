import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // build method called 60 time/second
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: 25,
                color: Colors.green,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.black,
              ),
              Column(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    color: Colors.greenAccent,
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
