// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:househarbor/screens/login/login-screen2.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Back icon and profile text with left padding
              Container(
                padding: EdgeInsets.fromLTRB(
                    16, 84, 16, 40), // Added top padding and left padding
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Center-align the row
                  children: [
                    // Back icon (Left-aligned)
                    InkWell(
                      onTap: () {
                        // Handle the back button click here
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Color(0xffB1BDBD),
                      ),
                    ),
                    SizedBox(
                        width:
                            20), // Add spacing between back icon and profile text
                    // Profile text with left padding
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          70, 0, 0, 0), // Add left padding
                      child: Text(
                        'PROFILE',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffB1BDBD),
                          fontFamily: 'Arial',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              // Round profile picture
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/Profile.png'),
              ),
              SizedBox(height: 10),
              // Text for name
              Text(
                'Anuga Karunatilaka',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffB1BDBD),
                ),
              ),
              SizedBox(height: 5),
              // Text for email
              Text(
                'anugak200@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffB1BDBD),
                ),
              ),
              SizedBox(height: 30),
              // Edit profile, change password, and mode buttons with custom width and height
              SizedBox(
                width: 291, // Set custom button width
                height: 55, // Set custom button height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Edit Profile button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF316868),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                    ),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 291, // Set custom button width
                height: 55, // Set custom button height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Change Password button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF316868),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                    ),
                  ),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 291, // Set custom button width
                height: 55, // Set custom button height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Mode Change button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF316868),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                    ),
                  ),
                  child: Text(
                    'Change Mode',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 75),
              // Login button with custom width and height
              SizedBox(
                width: 202, // Set custom button width
                height: 45, // Set custom button height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Logout button click
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(144, 255, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logout icon
                      Icon(
                        Icons
                            .exit_to_app, // Use the exit_to_app icon for logout
                        color: Colors.white,
                      ),
                      SizedBox(width: 8), // Add spacing between icon and text
                      // Logout text
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
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
