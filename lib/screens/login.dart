import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(''))),
          ),
          Column(
            children: [
              const Text("Login"),
              const Text('Please enter your valid phone number.'),
              const Text("we will send you a 4-digit code to verify"),
              const TextField(
                decoration: InputDecoration(),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Submit")),
              const CircleAvatar(
                child: Text(
                  "OR",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Text("Login Using"),
              const Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.facebook),
                  ),
                  CircleAvatar(child: Icon(Icons.mail))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
