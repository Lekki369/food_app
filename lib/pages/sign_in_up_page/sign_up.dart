import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final double width;
  const SignUp({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextField(
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
          const SizedBox(
            height: 18,
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: eye,
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              suffix: IconButton(
                onPressed: () => _button(),
                icon: const Icon(
                  Icons.remove_red_eye_outlined,
                ),
              ),
              labelText: 'Password',
              // border: InputBorder.(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Center(
              child: SizedBox(
                height: 60,
                width: widget.width * 0.8,
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.red,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
