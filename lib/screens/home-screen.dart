// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:househarbor/screens/campaings.dart';
import 'package:househarbor/screens/contacts-screen.dart';
import 'package:househarbor/screens/profile-screen.dart';
import 'package:househarbor/screens/tips-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2; // Initialize the current index

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
      backgroundColor: Color(0xFF151515), // Set your background color here
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top section with notification icon and profile circle
            Container(
              padding: EdgeInsets.fromLTRB(16, 44, 16, 16), // Added top padding
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

            // Welcome message (Aligned to the left)
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Text(
                  'WELCOME ANUGA',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff316868),
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),

            // Recent Campaigns section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Campaigns',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffB1BDBD),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

            // "Empower Her" button with text elements inside
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button click
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF316868),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 16, top: 12, bottom: 3),
                        child: Text(
                          'Empower Her',
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      // "Last Edited" text
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 16, bottom: 8),
                        child: Text(
                          'Last edited on Aug 2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Arial',
                              color: Color.fromARGB(220, 255, 255, 255)),
                        ),
                      ),
                      // Two texts in a row
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFFB1BDBD), // Dark teal background color for "Email"
                                borderRadius: BorderRadius.circular(
                                    15), // Set border radius for "Email"
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF066061),
                                    fontFamily: 'Arial',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    8), // Add some space between the two texts
                            Container(
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFFB1BDBD), // Dark teal background color for "Sent"
                                borderRadius: BorderRadius.circular(
                                    15), // Set border radius for "Sent"
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  'Sent',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF066061)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            // Duplicate "Empower Her" button with reduced space
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button click
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF316868),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 16, top: 12, bottom: 3),
                        child: Text(
                          'Rise to Radiance',
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      // "Last Edited" text
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 16, bottom: 8),
                        child: Text(
                          'Last edited on Aug 2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Arial',
                              color: Color.fromARGB(220, 255, 255, 255)),
                        ),
                      ),
                      // Two texts in a row
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFFB1BDBD), // Dark teal background color for "Email"
                                borderRadius: BorderRadius.circular(
                                    15), // Set border radius for "Email"
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF066061),
                                    fontFamily: 'Arial',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    8), // Add some space between the two texts
                            Container(
                              decoration: BoxDecoration(
                                color: Color(
                                    0xFFB1BDBD), // Dark teal background color for "Sent"
                                borderRadius: BorderRadius.circular(
                                    15), // Set border radius for "Sent"
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  'Draft',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF066061)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // "Create a Campaign" button (Aligned to the right)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, top: 8),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Create a Campaign" button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color(0xFFB1BDBD), // Background color of the button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set border radius
                    ),
                  ),
                  child: Text(
                    'Create a Campaign',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xFF066061),
                    ),
                  ),
                ),
              ),
            ),

            // Transactional section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transactional',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB1BDBD),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Emails sent in the last 7 days',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF066061),
                        ),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff316868),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First box with two texts
                      // First box with three texts
                      Container(
                        width: (MediaQuery.of(context).size.width - 48) /
                            2, // Divide the width into two
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF316868),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Text 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Another Text',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF316868),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Text 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Another Text',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 0),
                      // Second box with two texts
                      Container(
                        width: (MediaQuery.of(context).size.width - 20) /
                            2, // Divide the width into two
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF316868),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Text 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Another Text',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF316868),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Text 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Another Text',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Another "Recent Campaigns" section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffB1BDBD),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // Add more widgets for the second "Recent Campaigns" section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First box with two texts
                // First box with three texts
                Container(
                  width: (MediaQuery.of(context).size.width - 48) /
                      2, // Divide the width into two
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF316868),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Text 1',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Another Text',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 0),
                // Second box with two texts
                Container(
                  width: (MediaQuery.of(context).size.width - 20) /
                      2, // Divide the width into two
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF316868),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Text 1',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Another Text',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 55),
            // CustomBottomNavBar(
            //   currentIndex: _currentIndex,
            //   onTap: _onNavBarItemTapped, // Pass the callback function
            // )
          ],
        ),
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
                label: ' ',
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
