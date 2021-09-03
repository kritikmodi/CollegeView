import 'package:collegeview/Screens/Homepage/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:collegeview/Screens/Login/components/background.dart';
import 'package:collegeview/Screens/Signup/signup_screen.dart';
import 'package:collegeview/components/already_have_an_account_acheck.dart';
import 'package:collegeview/components/rounded_button.dart';
import 'package:collegeview/components/rounded_input_field.dart';
import 'package:collegeview/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../events.dart';

class Body extends StatelessWidget {
  String email="",password="";
  Body({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email=value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password=value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if(email=="dsceHack@gmail.com" && password=="1DS19CSxxx")
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
