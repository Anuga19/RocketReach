import 'package:flutter/material.dart';
import 'package:househarbor/screens/register/register-screen3.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterScreen2(),
  ));
}

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({Key? key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0), // Add padding at the top
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'RocketReach',
                    style: TextStyle(
                      fontSize: 45,
                      decoration: TextDecoration.none,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB1BDBD),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Ready, Set, Email!',
                      style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xffB1BDBD),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Enter your business details',
                      style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xffB1BDBD),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Business Name",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffB1BDBD))),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB1BDBD), // Background color
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your business name',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15), // Adjust padding
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Business Email",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffB1BDBD))),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB1BDBD), // Background color
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your business email',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15), // Adjust padding
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Industry",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffB1BDBD))),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB1BDBD), // Background color
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your industry',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15), // Adjust padding
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Phone Number",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffB1BDBD))),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB1BDBD), // Background color
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15), // Adjust padding
                            ),
                            initialCountryCode: 'US', // Initial country code
                            onChanged: (phone) {
                              // Handle phone number change
                            },
                          ),
                        ),

                        SizedBox(height: 70), // Add spacing
                        Align(
                          alignment:
                              Alignment.centerRight, // Align to the right
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen3()),
                              );
                            },
                            child: Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white, // Font color
                                fontSize: 16,
                                fontFamily: 'Arial',
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff316868), // Background color
                              minimumSize: Size(73, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // Border radius
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
