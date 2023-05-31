import 'package:flutter/material.dart';
import '../../../components/account_text.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

import 'sign_up_form.dart';

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
              children: [
                SizedBox(width: 50.0,height: SizeConfig.screenHeight * 0.01),
                Image.asset('assets/images/logo-01.png'),

                SizedBox(height: SizeConfig.screenHeight * 0.01), // 4%
                Text(
                  "Register Account !",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(23),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Create your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.normal,
                  ),

                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                AccountText(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
