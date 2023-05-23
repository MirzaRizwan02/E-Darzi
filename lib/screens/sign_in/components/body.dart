import 'package:flutter/material.dart';
import '../../../components/no_account_text.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              // children: [
              //   SizedBox(height: SizeConfig.screenHeight * 0.04),
              //   Text(
              //     "Welcome Back",
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: getProportionateScreenWidth(28),
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   Text(
              //     "Sign in with your email and password  \nor continue with social media",
              //     "Sign in with your email and password  \nor continue with social media",
              //     textAlign: TextAlign.center,
              //   ),
              //   SizedBox(height: SizeConfig.screenHeight * 0.08),
              //   SignForm(),
              //   SizedBox(height: SizeConfig.screenHeight * 0.08),
              //
              // ],
              children: [
                SizedBox(width: 50.0,height: SizeConfig.screenHeight * 0.04),
                Image.asset('assets/images/Button.png'),

                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "Welcome Back !",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(23),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Login to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.normal,
                  ),

                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
