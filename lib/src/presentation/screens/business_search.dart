// import 'package:flutter/material.dart';
//
//
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int _currentIndex = 0;
//   final List<Widget> _customIcons = [
//     Image.asset(
//       'images/eva_folder-remove-outline.png',
//       width: 24.0,
//       height: 24.0,
//     ),
//     Image.asset(
//       'images/Group 23.png',
//       width: 60.0,
//       height: 50.0,
//     ),
//     Image.asset(
//       'images/Vector.png',
//       width: 24.0,
//       height: 24.0,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _buildScreen(_currentIndex),
//         bottomNavigationBar: Container(
//           height: 80.0, // Adjust the height as needed
//           decoration: BoxDecoration(
//             color: Color(0xFF003649),
//           ),
//           child: BottomNavigationBar(
//             backgroundColor: Colors.transparent,
//             fixedColor: Colors.white, // Customize the selected icon color
//             currentIndex: _currentIndex,
//             onTap: (int index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: [
//               BottomNavigationBarItem(
//                 icon: _customIcons[0],
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: _customIcons[1],
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: _customIcons[2],
//                 label: '',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildScreen(int index) {
//     switch (index) {
//       case 0:
//         return SearchScreen();
//     // Add more screens here for other bottom navigation items
//       default:
//         return Container(); // Default screen
//     }
//   }
// }
//
// class SearchScreen extends StatelessWidget {
//   final List<String> searchTerms = [
//     'Beier, O''Conner and Howe',
//     'Runolfsson Group',
//     'Denesik-Rice',
//     'Feil Inc',
//     'O Conner LLC',
//     'Rowe and Sons',
//     'Volkman-Ebert',
//     'Will-Christiansen',
//     'Emard PLC',
//     'JK Agri Genetics Ltd',
//
//   ];
//
//   // final List<String> secondaryTexts = [
//   //   'New York',
//   //   'Secondary Text 2',
//   //   'Secondary Text 3',
//   //   'Secondary Text 4',
//   //   'Secondary Text 5',
//   //   'Secondary Text 6',
//   //   'Secondary Text 7',
//   //   'Secondary Text 8',
//   // ];
//
//   final TextStyle searchTermTextStyle = TextStyle(
//     color: Color(0xFF003649),
//     fontSize: 12,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w600,
//     height: 1.23,
//     letterSpacing: 3.50,
//   );
//
//   final TextStyle secondaryTextStyle = TextStyle(
//     color: Color(0x7F27413C),
//     fontSize: 12,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w400,
//     height: 1.23,
//   );
//
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 10.0), // Add 1 point padding
//           Container(
//             padding: EdgeInsets.all(2.0),
//             width: 380.0,
//             height: 50.0,
//             decoration: BoxDecoration(
//               border: Border.all(color: Color(0xFFF89630)),
//               borderRadius: BorderRadius.circular(2.0),
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       //hintText: 'Agriculture',
//                       border: InputBorder.none,
//                       prefixText: 'Aggriculture',
//                       // Add your prefix text here
//                       prefixStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Handle search icon tap action here
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(left: 10.0),
//                     child: Image.asset(
//                       'images/eva_search-fill11.png',
//                       width: 30.0,
//                       height: 30.0,
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Handle search icon tap action here
//                   },
//                   child: Container(
//                     padding: EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'images/eva_options-2-outline@2x.png',
//                       width: 30.0,
//                       height: 30.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10,),
//           Divider(),
//           SizedBox(height: 14.0),
//           Expanded(
//             child: ListView.separated(
//               itemCount: searchTerms.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         searchTerms[index],
//                         style: searchTermTextStyle,
//                       ),
//                       Text(
//                         'New York',
//                         style: TextStyle(
//                           color: Color(0x7F27413C),
//                           fontSize: 12,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                           height: 1.23,
//                         ),
//                       ),
//                     ],
//                   ),
//                   onTap: () {
//                     // Handle item selection here
//                     print('Selected: ${searchTerms[index]}');
//                   },
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return Divider(); // Add a divider after each search item
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BusinessSearch extends StatefulWidget {
  @override
  BusinessSearchState createState() => BusinessSearchState();
}

class BusinessSearchState extends State<BusinessSearch> {
  int _currentIndex = 0;
  final List<String> searchTerms = [
    'Beier, O' 'Conner and Howe',
    'Runolfsson Group',
    'Denesik-Rice',
    'Feil Inc',
    'O Conner LLC',
    'Rowe and Sons',
    'Volkman-Ebert',
    'Will-Christiansen',
    'Emard PLC',
    'JK Agri Genetics Ltd',
  ];

  final TextStyle searchTermTextStyle = TextStyle(
    color: Color(0xFF003649),
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 1.23,
    letterSpacing: 3.50,
  );

  final TextStyle secondaryTextStyle = TextStyle(
    color: Color(0x7F27413C),
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 1.23,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildScreen(_currentIndex),
        bottomNavigationBar: Container(
          height: 80.0, // Adjust the height as needed
          decoration: BoxDecoration(
            color: Color(0xFF003649),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            fixedColor: Colors.white,
            // Customize the selected icon color
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;

                if (index == 0) {
                  Navigator.pushNamed(context, '/home');
                } else if (index == 1) {
                  Navigator.pushNamed(context, '/home');
                } else if (index == 2) {
                  Navigator.pushNamed(context, '/business');
                }
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/eva_folder-remove-outline.png',
                  width: 24.0,
                  height: 24.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/Group 23.png',
                  width: 60.0,
                  height: 50.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/Vector.png',
                  width: 24.0,
                  height: 24.0,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScreen(int index) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.0), // Add 1 point padding
          Container(
            padding: EdgeInsets.all(2.0),
            width: 380.0,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF89630)),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      //hintText: 'Agriculture',
                      border: InputBorder.none,
                      prefixText: 'Aggriculture',
                      // Add your prefix text here
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
                    padding: EdgeInsets.only(left: 10.0),
                    child: Image.asset(
                      'images/eva_search-fill11.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/filter');
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'images/eva_options-2-outline@2x.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(height: 14.0),
          Expanded(
            child: ListView.separated(
              itemCount: searchTerms.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        searchTerms[index],
                        style: searchTermTextStyle,
                      ),
                      Text(
                        'New York',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                  onTap: () {
                    // Handle item selection here
                    print('Selected: ${searchTerms[index]}');
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider(); // Add a divider after each search item
              },
            ),
          ),
        ],
      ),
    );
  }
}
