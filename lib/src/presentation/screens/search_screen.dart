import 'package:figmaaapdemo/src/presentation/screens/businees_screen.dart';
import 'package:figmaaapdemo/src/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SearchScreen(),
  ));
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _currentIndex = 0;
  final List<String> searchTerms = [
    'Aerospace',
    'Transport',
    'Computer',
    'Telecommunication',
    'Agriculture',
    'Construction',
    'Pharmaceutical',
    'Food',
    'Health care',
    'Hospitality',
  ];

  final TextStyle searchTermTextStyle = TextStyle(
    color: Color(0xFF003649),
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 1.23,
    letterSpacing: 3.50,
  );

  final List<Widget> _customIcons = [
    Image.asset(
      'images/eva_home-outline.png',
      width: 24.0,
      height: 24.0,
    ),
    Image.asset(
      'images/Group 23.png',
      width: 60.0,
      height: 50.0,
    ),
    Image.asset(
      'images/eva_briefcase-outline.png',
      width: 24.0,
      height: 24.0,
    ),
  ];

  final List<Widget> _screens = [
    HomeScreen(),
    BusinessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildSearchScreen()
        // Default screen

        // child: BottomNavigationBar(
        //   backgroundColor: Colors.transparent,
        //   fixedColor: Colors.white, // Customize the selected icon color
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
        //         Navigator.pushNamed(context, '/business');
        //       }
        //     });
        //   },
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

  Widget _buildSearchScreen() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.0), // Add 1 point padding
          Container(
            padding: EdgeInsets.all(6.0),
            width: 380.0,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF89630)),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Container(
              width: 343,
              height: 48,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,
                        prefixText: 'Aggriculture', // Add your prefix text here
                        prefixStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle search icon tap action here
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'images/eva_search-fill11.png',
                          width: 70.0,
                          height: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(height: 25.0),
          Expanded(
            child: ListView.separated(
              itemCount: searchTerms.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    searchTerms[index],
                    style: searchTermTextStyle,
                  ),
                  onTap: () {
                    // Handle item selection here
                    print('Selected: ${searchTerms[index]}');
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
