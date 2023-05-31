import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otp/otp_screen.dart';
import '../../../components/form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email,phone;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(0.02)),
          // buildPasswordFormField(),
          // SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),

            ],
          ),
          FormError(errors: errors),

          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(

            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                // KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  // TextFormField buildPasswordFormField() {
  //   return TextFormField(
  //     obscureText: true,
  //     onSaved: (newValue) => password = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kPassNullError);
  //       } else if (value.length >= 8) {
  //         removeError(error: kShortPassError);
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         addError(error: kPassNullError);
  //         return "";
  //       } else if (value.length < 8) {
  //         addError(error: kShortPassError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       hintText: 'Enter Phone Number or Email',
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5.0),
  //       ),
  //     ),
  //   );
  // }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (email != null || phone != null) {
          removeError(error: kEmailNullError);
          removeError(error: kPhoneNumberNullError);
        }
        else if (emailValidatorRegExp.hasMatch(value) || phoneValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
          removeError(error: kInvalidPhoneError);
        }
        return null;
      },
      // validator: (value) {
      //   if (email == null || phone == null) {
      //     addError(error: kEmailNullError);
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   } else if (emailValidatorRegExp.hasMatch(value!) || phoneValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     addError(error: kInvalidPhoneError);
      //     return "";
      //   }
      //   return null;
      // },

      decoration: InputDecoration(

        hintText: 'Enter Phone Number or Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),

      ),
      textAlign: TextAlign.center,
    );
  }
}
