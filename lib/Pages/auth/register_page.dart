import 'package:flutter/material.dart';

import '../../Theme/color_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: ColorTheme.whiteTheme,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: mediaQuery.size.height * 0.41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Image(
                  width: mediaQuery.size.width * 1.13,
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/images/landing_page2.jpg"),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: _buildBottom(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.7,
      child: Card(
        margin: const EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Get Started",
          style: TextStyle(
            fontSize: FontTheme.headingSize,
            fontWeight: FontTheme.headingWeight,
          ),
        ),
        SizedBox(height: mediaQuery.size.width*0.1),
        const TextField(
          decoration: InputDecoration(
            labelText: "Name",
            filled: true,
          ),
        ),
        SizedBox(height: mediaQuery.size.width*0.04),
        const TextField(
          decoration: InputDecoration(
            labelText: "Email",
            filled: true,
          ),
        ),
        SizedBox(height: mediaQuery.size.width*0.04),
        const TextField(
          decoration: InputDecoration(
            labelText: "Password",
            filled: true,
          ),
        ),
        SizedBox(height: mediaQuery.size.width*0.1),
        SizedBox(
          height: 50,
          width: 140,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorTheme.neogreenTheme,
              foregroundColor: ColorTheme.blackTheme,
            ),
            onPressed: () {

            },
            child: Text(
              "Register".toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontTheme.subheadingWeight,
                  fontSize: FontTheme.buttonFontSize),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have account? ",
              style: TextStyle(
                  fontSize: FontTheme.subheadingSize,
                  color: ColorTheme.grayTheme),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: FontTheme.subheadingSize,
                    color: ColorTheme.blueTheme),
              ),
            )
          ],
        )
      ],
    );
  }
}
