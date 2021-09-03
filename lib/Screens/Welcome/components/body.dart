import 'package:flutter/material.dart';
import 'package:collegeview/Screens/Login/login_screen.dart';
import 'package:collegeview/Screens/Signup/signup_screen.dart';
import 'package:collegeview/Screens/Welcome/components/background.dart';
import 'package:collegeview/components/rounded_button.dart';
import 'package:collegeview/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.02),
            Text(
              "Welcome to",
              style: TextStyle(fontStyle:FontStyle.italic,fontSize: 15,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "COLLEGE VIEW",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple, fontSize: 38, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}