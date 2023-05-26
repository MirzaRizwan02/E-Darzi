import 'package:flutter/material.dart';

void main() => runApp(ProductPage());

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
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StyleCard(
                          imageUrl: 'assets/images/NeckStyle/style1.png',
                          onTap: () {
                            // Handle style preset tap
                            // Example: Apply style preset 1
                          },
                        ),
                        StyleCard(
                          imageUrl: 'assets/images/NeckStyle/style2.png',
                          onTap: () {
                            // Handle style preset tap
                            // Example: Apply style preset 2
                          },
                        ),
                        StyleCard(
                          imageUrl: 'assets/images/NeckStyle/style3.png',
                          onTap: () {
                            // Handle style preset tap
                            // Example: Apply style preset 3
                          },
                        ),
                        StyleCard(
                          imageUrl: 'assets/images/NeckStyle/style4.png',
                          onTap: () {
                            // Handle style preset tap
                            // Example: Apply style preset 4
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SleevesCard(
                          imageUrl: 'assets/images/sleeves1.png',
                          onTap: () {
                            // Handle sleeves preset tap
                            // Example: Apply sleeves preset 1
                          },
                        ),
                        SleevesCard(
                          imageUrl: 'assets/images/sleeves2.png',
                          onTap: () {
                            // Handle sleeves preset tap
                            // Example: Apply sleeves preset 2
                          },
                        ),
                        SleevesCard(
                          imageUrl: 'assets/images/sleeves3.png',
                          onTap: () {
                            // Handle sleeves preset tap
                            // Example: Apply sleeves preset 3
                          },
                        ),
                        SleevesCard(
                          imageUrl: 'assets/images/sleeves4.png',
                          onTap: () {
                            // Handle sleeves preset tap
                            // Example: Apply sleeves preset 4
                          },
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
                    // Handle add to cart button tap
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
