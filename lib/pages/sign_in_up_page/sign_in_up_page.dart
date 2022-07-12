// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/pages/sign_in_up_page/sign_in.dart';

import 'sign_up.dart';

class SignInSignUp extends StatefulWidget {
  const SignInSignUp({Key? key}) : super(key: key);

  @override
  State<SignInSignUp> createState() => _SignInSignUpState();
}

class _SignInSignUpState extends State<SignInSignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return (Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Image(
                  isAntiAlias: true,
                  height: 170,
                  width: 150,
                  image: AssetImage('assets/images/icon.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.45),
              child: Container(
                width: width,
                height: height * 0.6,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.transparent,
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 50, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Login'), Text('SignUp')],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        //height: height * 0.5,
                        width: width,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SignIn(
                              width: width,
                            ),
                            SignUp(
                              width: width,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
