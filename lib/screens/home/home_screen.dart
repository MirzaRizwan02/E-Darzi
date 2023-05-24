import 'package:flutter/material.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import '../../screens/measurement/measurement.dart';
//
// import 'components/body.dart';
//
// class HomeScreen extends StatelessWidget {
//   static String routeName = "/HomeScreen";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/HomeScreen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          elevation: 0,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[100],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
              // Handle search field changes or submissions
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.deepPurple,
              onPressed: () {
                // Handle shopping cart button press

              },

            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                iconColor: Colors.deepPurple,
                title: Text('Home'),

                onTap: () {
                  // Handle drawer item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                iconColor: Colors.deepPurple,
                title: Text('Categories'),
                onTap: () {
                  // Handle drawer item tap
                },
              ),
              // Add more drawer items as needed
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.png'),
                  fit: BoxFit.cover,
                ),
              ), // Placeholder for banner image
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(imageUrl: 'assets/images/Product1.png'),
                  ProductCard(imageUrl: 'assets/images/Product2.png'),
                  ProductCard(imageUrl: 'assets/images/Product3.png'),
                  ProductCard(imageUrl: 'assets/images/Product4.png'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Collections',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/images/Collection/ideas Logo.png'),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  child: Center(
                    child: Text('Collection 1'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Collection 2'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Collection 2'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Collection 2'),
                  ),
                ),
                // Add more collection items as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;

  ProductCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Product Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '\$99.99',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
