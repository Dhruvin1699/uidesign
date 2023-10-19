import 'package:figmaaapdemo/src/presentation/screens/businees_screen.dart';
import 'package:figmaaapdemo/src/presentation/screens/business_details.dart';
import 'package:figmaaapdemo/src/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _customIcons = [
    SvgPicture.asset(
      'images/eva_folder-remove-outline.svg',
      width: 24.0,
      height: 24.0,
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: SvgPicture.asset(
        'images/Group 23.svg',
        width: 45.0,
        height: 50.0,
      ),
    ),
    SvgPicture.asset(
      'images/eva_briefcase-outline.svg',
      width: 24.0,
      height: 24.0,
    ),
    // Image.asset(
    //   'images/Group 23.svg',
    //   width: 65.0,
    //   height: 55.0,
    // ),
    // Image.asset(
    //   'images/eva_briefcase-outline.svg',
    //   width: 24.0,
    //   height: 24.0,
    // ),
  ];

  final List<Widget> _screens = [
    HomeScreen(),
    BusinessDetailsPage(),
    BusinessScreen(),
  ];

  // Define colors for selected and unselected items
  final Color selectedColor = Color(0xFFF89630); // Change to your desired color
  final Color unselectedColor = Colors.white; // Change to your desired color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
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
            icon: _getCustomIcon(0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(2),
            label: '',
          ),
        ],
      ),
    );
  }

  // Helper method to colorize the icons
  Widget _getCustomIcon(int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _currentIndex == index ? selectedColor : unselectedColor,
        BlendMode.srcIn,
      ),
      child: _customIcons[index],
    );
  }
}
