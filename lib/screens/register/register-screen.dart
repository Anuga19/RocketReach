// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:househarbor/screens/register/register-screen2.dart';

// import 'package:househarbor/screens/users.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MaterialApp(
//     home: RegisterScreen(),
//   ));
// }

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key? key});

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   TextEditingController _fistname = TextEditingController();
//   TextEditingController _lastname = TextEditingController();
//   TextEditingController _email = TextEditingController();

//   late SharedPreferences sharedPreferences;
//   @override
//   void initState() {
//     super.initState();
//     initalGetSavedData();
//   }

//   void initalGetSavedData() async {
//     sharedPreferences = await SharedPreferences.getInstance();

//     Map<String, dynamic> jsondatais =
//         jsonDecode(sharedPreferences.getString('userdata')!);

//     User user = User.fromJson(jsondatais);

//     if (jsondatais.isNotEmpty) {
//       _fistname.value = TextEditingValue(text: user.firstname);
//       _lastname.value = TextEditingValue(text: user.lastname);
//       _email.value = TextEditingValue(text: user.email);
//     }
//   }

//   void storedata() {
//     User user = User(_fistname.text, _lastname.text, _email.text);

//     String userdata = jsonEncode(user);
//     print(userdata);

//     sharedPreferences.setString('userdata', userdata);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Set background color to black
//       body: Padding(
//         padding: const EdgeInsets.only(top: 50.0), // Add padding at the top
//         child: ListView(
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'RocketReach',
//                     style: TextStyle(
//                       fontSize: 45,
//                       decoration: TextDecoration.none,
//                       fontFamily: 'Arial',
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xffB1BDBD),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Text(
//                       'Ready, Set, Email!',
//                       style: TextStyle(
//                         fontSize: 15,
//                         decoration: TextDecoration.none,
//                         color: Color(0xffB1BDBD),
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Text(
//                       'Enter your personal details',
//                       style: TextStyle(
//                         fontSize: 15,
//                         decoration: TextDecoration.none,
//                         color: Color(0xffB1BDBD),
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("First Name",
//                             style: TextStyle(
//                                 fontSize: 16, color: Color(0xffB1BDBD))),
//                         SizedBox(height: 10),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xffB1BDBD), // Background color
//                             borderRadius:
//                                 BorderRadius.circular(10), // Border radius
//                           ),
//                           child: TextFormField(
//                             controller: _fistname,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your first name',
//                               border: InputBorder.none, // Remove default border
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 15), // Adjust padding
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty ||
//                                   RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
//                                 return "Cannot be empyt ";
//                               } else {
//                                 return null;
//                               }
//                             },
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text("Last Name",
//                             style: TextStyle(
//                                 fontSize: 16, color: Color(0xffB1BDBD))),
//                         SizedBox(height: 10),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xffB1BDBD), // Background color
//                             borderRadius:
//                                 BorderRadius.circular(10), // Border radius
//                           ),
//                           child: TextFormField(
//                             controller: _lastname,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your last name',
//                               border: InputBorder.none, // Remove default border
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 15), // Adjust padding
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty ||
//                                   RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
//                                 return "Cannot be empyt ";
//                               } else {
//                                 return null;
//                               }
//                             },
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text("Email",
//                             style: TextStyle(
//                                 fontSize: 16, color: Color(0xffB1BDBD))),
//                         SizedBox(height: 10),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xffB1BDBD), // Background color
//                             borderRadius:
//                                 BorderRadius.circular(10), // Border radius
//                           ),
//                           child: TextFormField(
//                             controller: _email,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your email',
//                               border: InputBorder.none, // Remove default border
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 15), // Adjust padding
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty ||
//                                   RegExp(r'^[\w-\.]+@([\w-]+\)+[\w-]{2,4}').hasMatch(value!)) {
//                                 return "Cannot be empyt ";
//                               } else {
//                                 return null;
//                               }
//                             },
//                           ),
//                         ),
//                         SizedBox(height: 100), // Add spacing
//                         Align(
//                           alignment:
//                               Alignment.centerRight, // Align to the right
//                           child: ElevatedButton(
//                             onPressed: () {
//                               print(_fistname);
//                               storedata();

//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const RegisterScreen2()),
//                               );
//                               sharedPreferences.remove('userdata');
//                             },
//                             child: Text(
//                               "Next",
//                               style: TextStyle(
//                                 color: Colors.white, // Font color
//                                 fontSize: 16,
//                                 fontFamily: 'Arial',
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor:
//                                   Color(0xff316868), // Background color
//                               minimumSize: Size(73, 45),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.circular(10), // Border radius
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:househarbor/screens/register/register-screen2.dart';
import 'package:househarbor/screens/users.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterScreen(),
  ));
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _fistname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _email = TextEditingController();

  late SharedPreferences sharedPreferences;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    initalGetSavedData();
  }

  void initalGetSavedData() async {
    sharedPreferences = await SharedPreferences.getInstance();

    Map<String, dynamic> jsondatais =
        jsonDecode(sharedPreferences.getString('userdata')!);

    User user = User.fromJson(jsondatais);

    if (jsondatais.isNotEmpty) {
      _fistname.value = TextEditingValue(text: user.firstname);
      _lastname.value = TextEditingValue(text: user.lastname);
      _email.value = TextEditingValue(text: user.email);
    }
  }

  void storedata() {
    User user = User(_fistname.text, _lastname.text, _email.text);

    String userdata = jsonEncode(user);
    print(userdata);

    sharedPreferences.setString('userdata', userdata);
  }

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
                      'Enter your personal details',
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
                          Text("First Name",
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
                              controller: _fistname,
                              decoration: InputDecoration(
                                hintText: 'Enter your first name',
                                border:
                                    InputBorder.none, // Remove default border
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
                          SizedBox(height: 20),
                          Text("Last Name",
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
                              controller: _lastname,
                              decoration: InputDecoration(
                                hintText: 'Enter your last name',
                                border:
                                    InputBorder.none, // Remove default border
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
                          SizedBox(height: 20),
                          Text("Email",
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
                              controller: _email,
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                border:
                                    InputBorder.none, // Remove default border
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
                          SizedBox(height: 100), // Add spacing
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate the form before proceeding
                                if (formKey.currentState!.validate()) {
                                  storedata();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen2(),
                                    ),
                                  );
                                  sharedPreferences.remove('userdata');
                                }
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
                                backgroundColor:
                                    Color(0xff316868), // Background color
                                minimumSize: Size(73, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Border radius
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
          ],
        ),
      ),
    );
  }
}
