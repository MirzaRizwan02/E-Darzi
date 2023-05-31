import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/resend_otp_text.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: 50.0,height: SizeConfig.screenHeight * 0.02),
              Image.asset('assets/images/logo-01.png'),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                "Please enter the one time password sent to your registered email/Phone Number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w400,
                ),
              ),

              // buildTimer(),
              SizedBox(width: SizeConfig.screenWidth * 0.1,height: SizeConfig.screenHeight * 0.04),
              OtpForm(),

              // GestureDetector(
              //   onTap: () {
              //     // OTP code resend
              //   },
              //
              //   // child: Text(
              //   //   "Resend OTP Code",
              //   //   style: TextStyle(decoration: TextDecoration.underline),
              //   // ),
              // ),
              SizedBox(height: getProportionateScreenHeight(20)),
              ResendOTP(),

            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
