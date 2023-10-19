import 'package:figmaaapdemo/src/presentation/screens/business_details.dart';
import 'package:figmaaapdemo/src/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget {
  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  int _currentIndex = 0;
  final List<Widget> _customIcons = [
    Image.asset(
      'images/eva_folder-remove-outline.png',
      width: 24.0,
      height: 24.0,
    ),
    Image.asset(
      'images/Group 23.png',
      width: 60.0,
      height: 50.0,
    ),
    Image.asset(
      'images/Vector.png',
      width: 24.0,
      height: 24.0,
    ),
  ];
  final List<Widget> _screens = [
    BusinessDetailsPage(),
    HomeScreen(),
    //BusinessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // Remove back button
        backgroundColor: Colors.white,
        elevation: 0,
        // Remove elevation (borders),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Businesses',
                style: TextStyle(
                  color: Color(0xFF27413C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle search icon tap action here
                  Navigator.pushNamed(context, '/businesssearch');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'images/eva_search-fill.png', // Custom search icon
                    width: 40.0, // Adjust icon size as needed
                    height: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 70.0, // Preferred height for the AppBar
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6, // Number of items
              itemBuilder: (context, index) {
                return Image.asset(
                  getImageAsset(index),
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //
      //       if (index == 0) {
      //         Navigator.pushNamed(context, '/home');
      //       }
      //       else if(index == 1){
      //         Navigator.pushNamed(context, '/home');
      //       }
      //       else if(index == 2){
      //         Navigator.pushNamed(context, '/details');
      //       }
      //     });
      //   },
      //   backgroundColor: Color(0xFF003649),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: _customIcons[0],
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: _customIcons[1],
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: _customIcons[2],
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }

  // Helper function to get image asset based on index
  String getImageAsset(int index) {
    // Replace these asset paths with your custom image assets
    switch (index) {
      case 0:
        return 'images/Group4.png';
      case 1:
        return 'images/Group10.png';
      case 2:
        return 'images/Group11.png';
      case 3:
        return 'images/Group12.png';
      case 4:
        return 'images/Group14.png';
      case 5:
        return 'images/Group15.png';
      default:
        return '';
    }
  }
}

void main() {
  runApp(BusinessScreen());
}
