import 'package:flutter/material.dart';
import 'package:khonology/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: false, // Disable padding at the top to cover the status bar
        child: Stack(
          children: [
            // Background Image with 0.5 opacity
            Positioned.fill(
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  'assets/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Foreground content
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/app_icon.png', // Replace with your logo image file
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 60.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: SizedBox(
                        height: 60,
                        child: TextFormField(
                          controller: emailController,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            height: 2.2,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: const Icon(Icons.email, color: Colors.red),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(width: 2.0, color: Colors.red),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(width: 2.0, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: SizedBox(
                        height: 60,
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _obscureText,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            height: 2.2,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.key, color: Colors.red),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.red,
                              ),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(width: 2.0, color: Colors.red),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(width: 2.0, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () async {
                        // Add your sign-in logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(250, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('SIGN IN'),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16.0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign up here",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
