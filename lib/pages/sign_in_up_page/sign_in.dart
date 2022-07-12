// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food/pages/sign_in_up_page/forgot_password.dart';
import 'package:food/pages/welcome_page.dart';

class SignIn extends StatefulWidget {
  final double width;
  const SignIn({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool eye = true;
  void _button() {
    setState(() {
      if (eye == true) {
        eye = false;
      } else {
        eye = true;
      }
    });
  }

  _forgotPassword() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return ff(
            builder,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: 'Email',
              hintText: 'example@email.com',
              // border: InputBorder.none,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: eye,
            decoration: InputDecoration(
              labelText: 'Password',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              suffix: IconButton(
                onPressed: () => _button(),
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              _forgotPassword();
            },
            child: Text(
              'Forgot Passcode?',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 60),
          Center(
            child: SizedBox(
              height: 60,
              width: widget.width * 0.8,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.red,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
