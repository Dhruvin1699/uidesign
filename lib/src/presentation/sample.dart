import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    SplashScreen(),
    HomeScreen(),
    BusinessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
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
              GestureDetector(
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
            ],
          ),
        ),
        body: _screens[_currentIndex], // Change the body based on _currentIndex
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Color(0xFF003649),
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
      // routes: {
      //   '/splash': (context) => SplashScreen(),
      //   '/home': (context) => HomeScreen(),
      //   '/business': (context) => BusinessScreen(),
      //   '/details': (context) => BusinessDetailsPage(),
      //   '/search': (context) => SearchScreen(),
      //   '/businesssearch': (context) => BusinessSearch(),
      //   '/filter': (context) => FilterScreen(),
      // },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Splash Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class BusinessDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business Details Page',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class BusinessSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business Search Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Filter Screen',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

//home screen
// import 'package:figmaaapdemo/src/presentation/screens/businees_screen.dart';
// import 'package:figmaaapdemo/src/presentation/screens/search_screen.dart';
// import 'package:figmaaapdemo/src/presentation/screens/splash_screen.dart';
// import 'package:flutter/material.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> imageAssets = [
//     'images/frame1.png',
//     'images/gabriel-jimenez-jin4W1HqgL4-unsplash.jpg',
//     'images/adele-payman-2oYMwuFgnTg-unsplash.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white, // Make the AppBar background transparent
//         elevation: 0, // Remove elevation (shadow)
//         automaticallyImplyLeading: false,
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 25.0, top: 25),
//                 child: Text(
//                   'DYNASTY',
//                   style: TextStyle(
//                     color: Color(0xFFF89630),
//                     fontSize: 18,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: 4.50,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/search');
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(top: 25, right: 26),
//                     child: Image.asset(
//                       'images/eva_search-fill.png',
//                       width: 24.0,
//                       height: 24.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           color: Colors.white, // Background color for the body
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0), // Adjust as needed
//                   child: PageView.builder(
//                     itemCount: imageAssets.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0), // Adjust as needed
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(20.0),
//                           child: Container(
//                             width: 350, // Adjust width as needed
//                             height: 200, // Adjust height as needed
//                             child: Image.asset(
//                               imageAssets[index],
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }