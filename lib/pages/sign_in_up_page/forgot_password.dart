// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

ff(BuildContext builder) {
  // ignore: prefer_const_literals_to_create_immutables
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            labelText: 'Email',
            hintText: 'example@email.com',
            // border: InputBorder.none,
          ),
        ),
      ),
      Center(
        child: SizedBox(
          height: 60,
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
