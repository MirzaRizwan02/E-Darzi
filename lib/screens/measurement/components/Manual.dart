import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';
import '../../measurement/measurement.dart';

class manual extends StatelessWidget {
  static String routeName = "/manual";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Sign In"),
      ),
      body: ManualPage(),
    );
  }
}

class ManualPage extends StatefulWidget {
  @override
  _ManualPageState createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  final _formKey = GlobalKey<FormState>();
  String selectedPreset = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
        // padding: const EdgeInsets.all(22.0),
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
            vertical:getProportionateScreenHeight(10) ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 0.1),
              Text(
                'Enter Your Measurement Profile Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  hintText: 'Enter profile name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Enter Your Body Measurements for a Swift Experience',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter chest measurement'),
              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter waist measurement'),
              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter hips measurement'),
              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter inseam measurement'),
              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter sleeve measurement'),
              SizedBox(height: 12.0),
              MeasurementInputField(hintText: 'Enter shoulder measurement'),
              SizedBox(height: 12.0),
              Text(
                'Select a Preset Size',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  PresetSizeButton(
                    size: 'S',
                    isSelected: selectedPreset == 'S',
                    onTap: () {
                      setState(() {
                        selectedPreset = 'S';
                      });
                    },
                  ),
                  SizedBox(width: 8.0),
                  PresetSizeButton(
                    size: 'M',
                    isSelected: selectedPreset == 'M',
                    onTap: () {
                      setState(() {
                        selectedPreset = 'M';
                      });
                    },
                  ),
                  SizedBox(width: 8.0),
                  PresetSizeButton(
                    size: 'L',
                    isSelected: selectedPreset == 'L',
                    onTap: () {
                      setState(() {
                        selectedPreset = 'L';
                      });
                    },
                  ),
                  SizedBox(width: 8.0),
                  PresetSizeButton(
                    size: 'XL',
                    isSelected: selectedPreset == 'XL',
                    onTap: () {
                      setState(() {
                        selectedPreset = 'XL';
                      });
                    },
                  ),
                  SizedBox(width: 8.0),
                  PresetSizeButton(
                    size: 'XXL',
                    isSelected: selectedPreset == 'XXL',
                    onTap: () {
                      setState(() {
                        selectedPreset = 'XXL';
                      });
                    },
                  ),

                ],
              ),
              SizedBox(height: getProportionateScreenHeight(25)),
              DefaultButton(
                  text: "Confirm",
                  press: () {
                    Navigator.pushNamed(context, measurement.routeName);
                  }
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}

class MeasurementInputField extends StatelessWidget {

  final String hintText;

  const MeasurementInputField({
    Key? key,

    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

        hintText: hintText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
    );
  }
}
class PresetSizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  const PresetSizeButton({
    Key? key,
    required this.size,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber : Color(0xFF774AC7),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
