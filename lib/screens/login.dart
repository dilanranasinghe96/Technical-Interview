import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../components/socialIconComponent.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<String> countryCodes = [
    "(+01)",
    "(+91)",
    "(+44)",
    "(+61)",
    "(+49)"
  ];
  String selectedCountryCode = "(+01)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF140034),
                  Color(0xFF01010D),
                ],
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Please enter your valid phone number."),
            const Text("We will send you a 4-digit code to verify"),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButton<String>(
                    value: selectedCountryCode,
                    items: countryCodes.map((code) {
                      return DropdownMenuItem(
                        value: code,
                        child: Text(
                          code,
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedCountryCode = newValue!;
                      });
                    },
                    underline: const SizedBox(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter phone number",
                      border: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF8354FF),
                            Color(0xFFDD3562),
                          ],
                        ),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              width: 70,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Login using",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CustomSocialIcon(
                  color: Colors.blue,
                  icon: Icons.facebook,
                ),
                CustomSocialIcon(
                  color: Colors.red,
                  icon: Icons.g_mobiledata,
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
