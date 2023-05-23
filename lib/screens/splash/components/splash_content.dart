import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {

  const SplashContent({
    Key? key,
    this.text,
    this.text1,
    this.image,
  }) : super(key: key);
  final String? text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex:5),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(325),
          width: getProportionateScreenWidth(315),
        ),
        Spacer(flex: 1),
        Spacer(flex: 1),
        Spacer(flex: 1),

        // Text(
        //   "TRY BEFORE STITCH",
        //   style: TextStyle(
        //     fontSize: getProportionateScreenWidth(28),
        //     color: kPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          fontSize: 24,)

        ),
        Spacer(flex: 1),
        Text(
          text1!,
          textAlign: TextAlign.center,
        ),

      ],
    );
  }
}
