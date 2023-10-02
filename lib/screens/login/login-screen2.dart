// import 'package:flutter/material.dart';
// import 'package:househarbor/screens/home-screen.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginScreen2(),
//   ));
// }

// class LoginScreen2 extends StatefulWidget {
//   const LoginScreen2({Key? key});

//   @override
//   State<LoginScreen2> createState() => _LoginScreen2State();
// }

// class _LoginScreen2State extends State<LoginScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Set background color to black
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'WELCOME BACK',
//                 style: TextStyle(
//                   fontSize: 45,
//                   decoration: TextDecoration.none,
//                   fontFamily: 'Arial',
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xffB1BDBD),
//                 ),
//               ),
//               SizedBox(height: 40),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Text(
//                   'Unlock the potential of your campaigns with our intuitive tools and boost your reach like never before',
//                   style: TextStyle(
//                     fontSize: 15,
//                     decoration: TextDecoration.none,
//                     color: Color(0xffB1BDBD),
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               SizedBox(height: 30),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Email",
//                         style:
//                             TextStyle(fontSize: 16, color: Color(0xffB1BDBD))),
//                     SizedBox(height: 20),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffB1BDBD), // Background color
//                         borderRadius:
//                             BorderRadius.circular(10), // Border radius
//                       ),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Enter your email',
//                           border: InputBorder.none, // Remove default border
//                           contentPadding: EdgeInsets.symmetric(
//                               horizontal: 15), // Adjust padding
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty ||
//                               !RegExp(
//                                 r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}',
//                               ).hasMatch(value)) {
//                             return "Invalid email";
//                           }
//                           return null;
//                         },
//                       ),
//                     ),

//                     SizedBox(height: 20),
//                     Text("Password",
//                         style:
//                             TextStyle(fontSize: 16, color: Color(0xffB1BDBD))),
//                     SizedBox(height: 20),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffB1BDBD), // Background color
//                         borderRadius:
//                             BorderRadius.circular(10), // Border radius
//                       ),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Enter your password',
//                           border: InputBorder.none, // Remove default border
//                           contentPadding: EdgeInsets.symmetric(
//                               horizontal: 15), // Adjust padding
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Cannot be empty";
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: TextButton(
//                         onPressed: () {
//                           // Handle "Forgot Password" click here
//                         },
//                         child: Text(
//                           "Forgot Password?",
//                           style: TextStyle(color: Color(0xffB1BDBD)),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 60), // Add spacing
//                     Center(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Validate the form before proceeding
//                                 if (formKey.currentState!.validate()) {
//                                   storedata();
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           const RegisterScreen2(),
//                                     ),
//                                   );
//                                   sharedPreferences.remove('userdata');
//                                 }
//                           // Handle "Log In" button click here
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => HomeScreen()),
//                           );
//                         },
//                         child: Text(
//                           "LOG IN",
//                           style: TextStyle(
//                             color: Color(0xffB1BDBD), // Font color
//                             fontSize: 16,
//                             fontFamily: 'Arial',
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xff316868), // Background color
//                           minimumSize: Size(251, 55),
//                           shape: RoundedRectangleBorder(
//                             borderRadius:
//                                 BorderRadius.circular(35), // Border radius
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:househarbor/screens/home-screen.dart';
import 'package:househarbor/screens/register/register-screen2.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen2(),
  ));
}

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'WELCOME BACK',
                style: TextStyle(
                  fontSize: 45,
                  decoration: TextDecoration.none,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xffB1BDBD),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Unlock the potential of your campaigns with our intuitive tools and boost your reach like never before',
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
                child: Form(
                  key: formKey, // Assign the GlobalKey
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xffB1BDBD))),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffB1BDBD), // Background color
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                        child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none, // Remove default border
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15), // Adjust padding
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}',
                                ).hasMatch(value)) {
                              return "Invalid email";
                            }
                            return null;
                          },
                        ),
                      ),

                      SizedBox(height: 20),
                      Text("Password",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xffB1BDBD))),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffB1BDBD), // Background color
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                        child: TextFormField(
                          controller: _password,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: InputBorder.none, // Remove default border
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15), // Adjust padding
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Handle "Forgot Password" click here
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xffB1BDBD)),
                          ),
                        ),
                      ),
                      SizedBox(height: 60), // Add spacing
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Validate the form before proceeding
                            if (formKey.currentState!.validate()) {
                              // Handle "Log In" button click here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            }
                          },
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                              color: Color(0xffB1BDBD), // Font color
                              fontSize: 16,
                              fontFamily: 'Arial',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff316868), // Background color
                            minimumSize: Size(251, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(35), // Border radius
                            ),
                          ),
                        ),
                      )
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
