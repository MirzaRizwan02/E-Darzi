// import '../../../screens/home/components/MeasurementProfile.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
// import '../components/MeasurementPopup.dart';

// void main() => runApp(ProductPage());

class Product extends StatelessWidget {
  static String routeName = "/ProductPage";
  @override
  Widget build(BuildContext context) {
      return Scaffold(

        body: ProductPage(),
      );

  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Product1.png'),
                              fit: BoxFit.contain,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Name',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8, ),
                              Text(
                                'Price: \$99.99',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Neck Style

                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Neck Styles',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style1.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style2.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style3.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style4.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                      ],
                    ),
                  ),


                  // Sleeves Style

                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sleeves Styles',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style1.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style2.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style3.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style4.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                      ],
                    ),
                  ),

                  // Trouser Length

                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trouser Length',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style1.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style2.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style3.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: StyleCard(
                            imageUrl: 'assets/images/NeckStyle/style4.png',
                            onTap: () {
                              // Handle style preset tap
                              // Example: Apply style preset 3
                            },
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle virtual try-on button tap
                  },
                  child: Text('Virtual Try On'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(

                      context: context,
                      builder: (BuildContext context) {
                        String selectedProfile = ''; // Variable to store the selected profile
                        final Function(String) onProfileSelected;
                        return AlertDialog(
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Measurement Popup'),
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.0),
                            ],
                          ),
                          content: MeasurementPopup(onProfileSelected: (profile) {
                            selectedProfile = profile;
                          }),
                          actions: [
                            Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () {
                                  if (selectedProfile.isEmpty) {
                                    Navigator.of(context).pop();
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Measurement Profile Required'),
                                          content: Text('Please select a measurement profile.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },

                                child: Text('Continue'),
                              ),
                            ),
                          ],
                        );



                      },
                    );
                  },
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }

}

class StyleCard extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  StyleCard({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}

class SleevesCard extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  SleevesCard({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}

class MeasurementPopup extends StatefulWidget {

  MeasurementPopup({required this.onProfileSelected});
  final Function(String) onProfileSelected;

  @override
  _MeasurementPopupState createState() => _MeasurementPopupState();
}

class _MeasurementPopupState extends State<MeasurementPopup> {
  List<String> measurementProfiles = ['Profile 1', 'Profile 2'];
  String? selectedProfile;
  String selectedPreset = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropdownButton<String>(
          value: selectedProfile,
          hint: Text('Select Profile'),
          onChanged: (value) {
            setState(() {
              selectedProfile = value;
            });
          },
          items: measurementProfiles.map((profile) {
            return DropdownMenuItem<String>(
              value: profile,
              child: Text(profile),
            );
          }).toList(),
        ),
        SizedBox(height: 12),
        Text('Or'),
        SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('New Measurement Profile'),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Measurement Profile name',
                          ),
                          onChanged: (value) {
                            // Handle profile name change
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
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter chest measurement',
                          ),
                          onChanged: (value) {
                            // Handle chest measurement change
                          },
                        ),
                        SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter waist measurement',
                          ),
                          onChanged: (value) {
                            // Handle waist measurement change
                          },
                        ),
                        SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter hips measurement',
                          ),
                          onChanged: (value) {
                            // Handle hips measurement change
                          },
                        ),
                        SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter inseam measurement',
                          ),
                          onChanged: (value) {
                            // Handle inseam measurement change
                          },
                        ),
                        SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter sleeve measurement',
                          ),
                          onChanged: (value) {
                            // Handle sleeve measurement change
                          },
                        ),
                        SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter shoulder measurement',
                          ),
                          onChanged: (value) {
                            // Handle shoulder measurement change
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle create new profile
                        // Example: Save the new profile and close the popup
                        Navigator.of(context).pop();
                      },
                      child: Text('Save'),
                    ),
                  ],

                );
              },
            );
          },
          child: Text('Create New Profile'),
        ),
      ],
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
