import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {
  final double height;
  const BackgroundImages({
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Align(
        alignment: Alignment.bottomRight,
        heightFactor: 2,
        child: Image(
          image: AssetImage('assets/images/ToyFaces_Tansparent_BG_29.png'),
        ),
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        heightFactor: 1.5,
        child: Image(
          image: AssetImage('assets/images/ToyFaces_Tansparent_BG_49.png'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: height * 0.6),
        child: Container(
          height: 210,
          decoration: const BoxDecoration(
            color: Color.fromARGB(170, 255, 71, 11),
          ),
        ),
      )
    ]);
  }
}
