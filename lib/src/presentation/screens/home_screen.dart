import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageAssets = [
    'images/Rectangle 6 (1).png',
    'images/gabriel-jimenez-jin4W1HqgL4-unsplash.jpg',
    'images/adele-payman-2oYMwuFgnTg-unsplash.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Make the AppBar background transparent
        elevation: 0, // Remove elevation (shadow)
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25),
                child: Text(
                  'DYNASTY',
                  style: TextStyle(
                    color: Color(0xFFF89630),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 4.50,
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 25, right: 26),
                    child: Image.asset(
                      'images/eva_search-fill.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PageView.builder(
                    itemCount: imageAssets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              imageAssets[index],
                              fit: BoxFit.cover,
                              width: 380,
                              height: 710,
                            ),
                          ),
                          // Centered Text
                          Positioned(
                            top: 310, // Adjust this value as needed
                            child: Text(
                              'AGRICULTURE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                                letterSpacing: 8,
                              ),
                            ),
                          ),
                          // Small Image
                          Positioned(
                            top: 330, // Adjust this value as needed
                            child: Image.asset(
                              'images/Group 66.png',
                              // Replace with your image path
                              width: 100,
                              height: 90,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
