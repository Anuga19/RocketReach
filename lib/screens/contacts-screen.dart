// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:househarbor/screens/campaings.dart';
import 'package:househarbor/screens/home-screen.dart';
import 'package:househarbor/screens/profile-screen.dart';
import 'package:househarbor/screens/tips-screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int _currentIndex = 3; // Initialize the current index

  void _onNavBarItemTapped(BuildContext context, int index) {
    // Handle navigation based on the selected index
    if (index == 0) {
      // Handle Telegram icon tap
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            CampaingScreen(), // Replace with your home screen widget
      ));
    } else if (index == 1) {
      // Handle Bulb icon tap
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            TipsScreen(), // Replace with your home screen widget
      ));
    } else if (index == 2) {
      // Handle Home icon tap
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            HomeScreen(), // Replace with your home screen widget
      ));
    } else if (index == 3) {
      // Handle Profile icon tap
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            ContactScreen(), // Replace with your profile screen widget
      ));
    } else if (index == 4) {
      // Handle Calendar icon tap
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 44, 16, 0), // Added top padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // Align to the right
              children: [
                // Notification icon (Right-aligned with right padding)
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Color(0xffB1BDBD),
                  ),
                ),
                // Profile circle as a button (Right-aligned)
                InkWell(
                  onTap: () {
                    // Handle the profile circle button click here
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfileScreen(); // Replace with your account settings screen
                    }));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/images/Profile.png'), // Add your image URL
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      16, 84, 16, 40), // Added top padding and left padding
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Center-align the row
                    children: [
                      // Back icon (Left-aligned)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                        child: InkWell(
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
                      ),
                      SizedBox(
                          width:
                              30), // Add spacing between back icon and profile text
                      // Profile text with left padding
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            0, 0, 60, 0), // Add left padding
                        child: Text(
                          'TIPS',
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
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity, // Set the width to your desired value
        // height: 105,
        padding: EdgeInsets.fromLTRB(16, 15, 16, 20), // Add padding as needed
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(0)), // Add border radius
          color: Color(0xFF151515), // Background color of the container
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
            bottom: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF316868),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });

              _onNavBarItemTapped(context, index);
            },
            iconSize: 32,
            unselectedItemColor:
                Colors.white, // Change unselected icon color to white
            selectedItemColor:
                Colors.yellow, // Change selected icon color to yellow
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.campaign_outlined),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.lightbulb_outline),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.home),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.person_2_outlined),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.calendar_today_outlined),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
