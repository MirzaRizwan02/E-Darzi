import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../otp/otp_screen.dart';
import '../../components/default_button.dart';
import 'components/Manual.dart';


class measurement extends StatelessWidget {
  static String routeName = "/measurement";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        // title: Text("Sign In"),
      ),
      body: MeasurePage(),
    );
  }
}

class MeasurePage extends StatefulWidget {
  @override
  _MeasurePageState createState() => _MeasurePageState();
}

class _MeasurePageState extends State<MeasurePage> {
  final _formKey = GlobalKey<FormState>();
  String selectedPreset = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tailoring App'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(width: 50.0,height: SizeConfig.screenHeight * 0.011),
              Image.asset('assets/images/logo-01.png'),

              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                "For better experience, provide us with your measurements using one of the options:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w500,
                ),

              ),

              // Card
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, manual.routeName);
                },
                child: CardWidget(
                  heading: 'Enter Measurements',
                  text: 'Manually provide your measurements by using preset values or entering them',
                  icon: Icons.edit_outlined,
                ),
              ),

              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, manualpage.routeName);
                },
                child:CardWidget(
                  heading: 'Virtual Measure',
                  text: 'Using your phone camera, find out your measurements',
                  icon: Icons.mobile_friendly_outlined,
                ),
              ),

              SizedBox(height: getProportionateScreenHeight(20)),
              DefaultButton(

                  text: "I will do it later",
                  press: () {
                    // if all are valid then go to success screen
                    // KeyboardUtil.hideKeyboard(context);
                    Navigator.pushNamed(context, OtpScreen.routeName);
                  }
              ),


            ],
          ),
        ),
      ),
    );
  }
}


class CardWidget extends StatelessWidget {
  final String heading;
  final String text;
  final IconData icon;

  const CardWidget({
    required this.heading,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

      return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 36,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(height: 8),

            Text(
              heading,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(text,textAlign: TextAlign.center,),
          ],
        ),
      ),
    // ),
    );
  }
}