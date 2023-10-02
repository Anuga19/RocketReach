// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:househarbor/screens/login/login-screen2.dart';
import 'package:househarbor/screens/register/register-screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png', width: 200, height: 200),
          SizedBox(height: 40),
          Text(
            'RocketReach',
            style: TextStyle(
              fontSize: 45,
              decoration: TextDecoration.none,
              fontFamily: 'Arial', // Make it italic
              color: Color(0xffB1BDBD), // Change font color to green
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Ready, Set, Email!',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.none,
              //fontStyle: FontStyle.italic, // Make it italic
              color: Color(0xffB1BDBD), // Change font color to green
            ),
          ),
          SizedBox(height: 70),
          ElevatedButton(
            onPressed: () {
              // Handle "CREATE ACCOUNT" button click here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterScreen()),
              );
            },
            child: Text(
              'CREATE AN ACCOUNT',
              style: TextStyle(
                fontSize: 16, // Set the font size to 16
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary:
                  Color(0xff316868), // Change the background color to green
              onPrimary: Colors.white,
              minimumSize: Size(250, 50),
              side: BorderSide(
                  color: Colors.white, width: 1), // Add a white border
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // Handle "LOG IN" button click here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen2()),
              );
            },
            child: Text(
              'LOG IN',
              style: TextStyle(
                fontSize: 16, // Set the font size to 16
                fontFamily: 'Arial', // Use Arial font family
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffB1BDBD),
              onPrimary: Color(0xFF316868), // Set text color to #316868
              minimumSize: Size(250, 50),
            ),
          ),
        ],
      ),
    );
  }
}
