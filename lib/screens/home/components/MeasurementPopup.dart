import 'package:flutter/material.dart';

class MeasurementPopup extends StatefulWidget {
  static String routeName = "/MeasurementPopup";
  @override
  _MeasurementPopupState createState() => _MeasurementPopupState();
}

class _MeasurementPopupState extends State<MeasurementPopup> {
  late String selectedProfile;

  List<String> measurementProfiles = [
    'Profile 1',
    'Profile 2',
    'Profile 3',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Measurement Profile'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: measurementProfiles.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                title: Text(measurementProfiles[index]),
                value: measurementProfiles[index],
                groupValue: selectedProfile,
                onChanged: (value) {
                  setState(() {
                    selectedProfile = value!;
                  });
                },
              );
            },
          ),
          SizedBox(height: 16.0),
          Text(
            'Don\'t see your profile? Add a measurement profile.',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('OK'),
          onPressed: () {
            // Perform actions with the selectedProfile
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

// Example usage:

void showMeasurementPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return MeasurementPopup();
    },
  );
}
