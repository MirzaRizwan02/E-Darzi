import 'package:flutter/material.dart';

// void main() => runApp(Product());

class Measurement extends StatelessWidget {
  static String routeName = "/MeasurementPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MeasurementPage(),
    );
  }
}

class MeasurementPage extends StatefulWidget {
  @override
  _MeasurementPageState createState() => _MeasurementPageState();
}

class _MeasurementPageState extends State<MeasurementPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isAddToCartTapped = false;
  bool _showProfileSelection = false;
  String _selectedProfile = '';

  void _showProfileSelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Measurement Profile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Profile 1'),
                leading: Radio<String>(
                  value: 'Profile 1',
                  groupValue: _selectedProfile,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedProfile = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Profile 2'),
                leading: Radio<String>(
                  value: 'Profile 2',
                  groupValue: _selectedProfile,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedProfile = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Profile 3'),
                leading: Radio<String>(
                  value: 'Profile 3',
                  groupValue: _selectedProfile,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedProfile = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Handle adding a new measurement profile
                // Example: Navigate to the add profile screen
                Navigator.pop(context);
              },
              child: Text('Add New Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showProfileSelection = false;
                });
                Navigator.pop(context);
              },
              child: Text('Select'),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ...existing code...
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
                            fontSize: 24,
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
                            fontSize: 24,
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
                            fontSize: 24,
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
                        // ...existing code...
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
                    setState(() {
                      _isAddToCartTapped = true;
                      _showProfileSelection = true;
                    });
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
        width: 80,
        height: 80,
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
