import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterScreen3(),
  ));
}

class RegisterScreen3 extends StatefulWidget {
  const RegisterScreen3({Key? key});

  @override
  State<RegisterScreen3> createState() => _RegisterScreen3State();
}

class _RegisterScreen3State extends State<RegisterScreen3> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

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
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Enter OTP',
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        6,
                        (index) => Container(
                          width: 50,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                                200, 177, 189, 189), // Background color
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextField(
                              controller: _controllers[index],
                              decoration: InputDecoration(
                                border: InputBorder.none, // Remove borders
                                isDense: true,
                                contentPadding: EdgeInsets.all(0),
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                              buildCounter: (BuildContext context,
                                  {int? currentLength,
                                  int? maxLength,
                                  bool? isFocused}) {
                                return Container();
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive OTP? ",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Color(0xffB1BDBD),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle resend OTP
                        },
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffB1BDBD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 210), // Add spacing
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25.0), // Add right padding
                    child: Align(
                      alignment: Alignment.centerRight, // Align to the right
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen3()),
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
