import 'package:flutter/material.dart';
import 'package:flutter_container/registration_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 150,
                child: Image.asset(
                  'images/message-vocal.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'User Name',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(174, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(174, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 50),
                    // Adjust padding for size
                    textStyle: TextStyle(fontSize: 26.0),
                    // Adjust text size
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust border radius
                    ),
                    elevation: 5.0,
                    // Adjust elevation
                    backgroundColor:
                        Color.fromARGB(195, 195, 250, 250) // Background color

                    ),
                child: Text('Sign In'),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Or Continue With ',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Handle Google button tap
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white54,
                      ),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'images/google.png',
                        height: 50,
                      ), // Adjust width as needed
                    ),
                  ),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      // Handle Facebook button tap
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white54,
                      ),
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        'images/face.png',
                        height: 45,
                      ), // Adjust width as needed
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Member?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to registration page
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                    },
                    child: const Text(
                      'Please Register Now',
                      style: TextStyle(
                        color: Colors.blue, // You can set your desired color for the link
                        decoration: TextDecoration.underline,
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
