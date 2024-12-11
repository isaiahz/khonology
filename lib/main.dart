import 'package:flutter/material.dart';
import 'package:khonology/signuppage.dart';

import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image with opacity
        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Content over the image
        Container(
          color: Colors.black.withOpacity(0.6), // Add slight overlay for better text visibility
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image Section
              Column(
                children: [
                  const SizedBox(height: 120), // Space to move the images down
                  // Logo Image
                  Image.asset(
                    'assets/app_icon.png', // Replace with your logo image file
                    width: 100,
                    height: 100,
                  ),
                  //const SizedBox(height: 10), // Reduced spacing between app_icon and my_image
                  Image.asset(
                    'assets/khonology.png', // Replace with the name of your image file
                    width: 300,
                    height: 250,
                  ),
                ],
              ),

              // Buttons Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),

                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'DIGITAL | AFRICAN | SOLUTIONS',
                        style: TextStyle(
                          color: Colors.red, // Red text
                          fontSize: 8, // Adjust font size as needed
                          fontWeight: FontWeight.bold, // Bold text
                          decoration: TextDecoration.none, // Remove underline
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Login Button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, // Transparent background
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Rounded edges
                              side: const BorderSide(color: Colors.red, width: 2), // Red border with width 2
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            minimumSize: const Size(120, 50), // Increase width to 200 and height to 50
                          ),


                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),

                        // Signup Button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Red background
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Rounded edges
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                          ),
                          child: const Text(
                            'Signup',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
