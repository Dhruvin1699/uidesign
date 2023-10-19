import 'package:flutter/material.dart';

class BusinessDetailsPage extends StatefulWidget {
  @override
  State<BusinessDetailsPage> createState() => _BusinessDetailsPageState();
}

class _BusinessDetailsPageState extends State<BusinessDetailsPage> {
  final List<String> imageAssets = [
    'images/Rectangle 9.png',
    'images/steven-weeks-DUPFowqI6oI-unsplash.jpg',
    'images/no-one-cares-l_5MJnbrmrs-unsplash.jpg',
  ];

  void showImageSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      // Customize the Snackbar appearance here
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // int _currentIndex = 0;
  // final List<Widget> _customIcons = [
  //   Image.asset(
  //     'images/eva_folder-remove-outline.png',
  //     width: 24.0,
  //     height: 24.0,
  //   ),
  //   Image.asset(
  //     'images/Group 23.png',
  //     width: 60.0,
  //     height: 50.0,
  //   ),
  //   Image.asset(
  //     'images/Vector.png',
  //     width: 24.0,
  //     height: 24.0,
  //   ),
  // ];
  // final List<Widget> _screens = [
  //
  //   HomeScreen(),
  //   BusinessScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle the first GestureDetector tap action here
                  },
                  child: Container(
                    width: 50,
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      'images/Group25.png', // Update with the correct path
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                ),
                SizedBox(width: 35.0),

                // Column for the business details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JK Agri Genetics Ltd',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xFF27413C),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '34, New Street, New York',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),

                // Add the "Back" text
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Handle the back button tap action here
                      },
                      child: Container(
                        padding: EdgeInsets.all(7.0),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF89630),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 252,
                  color: Color(0xFF003649),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Column(
                      // Use a Column to center the text vertically
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Center the text vertically
                      children: [
                        Text(
                          'AGRICULTURE',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xFFF89630),
                            letterSpacing: 6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    width: 326,
                    height: 251,
                    child: PageView.builder(
                      itemCount: 3, // Number of images
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(0.0),
                          // Adjust padding as needed
                          child: ClipRect(
                            child: Image.asset(
                              imageAssets[index],
                              // 'images/frame${index + 1}.png',
                              width: 330, // Adjust width to fit the screen
                              height: 252,
                              fit: BoxFit.cover, // Cover will make them square
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Facebook Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset(
                        'images/eva_facebook-fill.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Twitter Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset(
                        'images/eva_twitter-fill.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Vector Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset(
                        'images/Vector (1).png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Group Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 30.0,
                      child: Image.asset(
                        'images/Group.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Email Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset(
                        'images/ic_baseline-email.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Message Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0, // Adjust the width as needed
                      height: 25.0, // Adjust the height as needed
                      child: Image.asset(
                        'images/bi_chat-dots-fill.png',
                        // Update with the correct path
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      showImageSnackbar('Phone Icon Tapped!');
                    },
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      child: Image.asset(
                        'images/eva_phone-call-fill.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 34,
            ),
            Row(
              children: [
                Container(
                  width: 347.50,
                  //height: 500,
                  child: Card(
                    elevation: 8, // Add elevation for the shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('images/Group 69 (2).png'),
                              // Replace with your background image
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Text(
                              'ABOUT US',
                              style: TextStyle(
                                color: Color(0xFFF89630),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 6,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          // Adjust padding as needed
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Fusce augue ipsum, laoreet vitae dictum at, sodales dictum tellus. '
                            'Cras ac odio vehicula tortor pretium sodales.\n'
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. '
                            'Fusce augue ipsum, laoreet vitae dictum at, sodales dictum tellus. '
                            'Cras ac odio vehicula tortor pretium sodales.\n'
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Fusce augue ipsum, laoreeLorem ipsum dolor sit amet, consectetur adipiscing elit. adipiscing elit. ',
                            style: TextStyle(
                              color: Color(0x7F27413C),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.90,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 76.0),
          child: Row(
            children: [
              Container(
                width: 347.50,
                //height: 500,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('images/Rectangle 14.png'),
                            // Replace with your background image
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Text(
                            'SERVICES',
                            style: TextStyle(
                              color: Color(0xFFF89630),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 6,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'SEEDS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 6,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                    'Fusce augue ipsum, laoreet vitae dictum at, sodales dictum tellus. '
                                    'Cras ac odio vehicula tortor pretium sodales.',
                                    style: TextStyle(
                                      color: Color(0x7F27413C),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FARMING TOOLS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 6,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                    'Fusce augue ipsum, laoreet vitae dictum at, sodales dictum tellus. '
                                    'Cras ac odio vehicula tortor pretium sodales.',
                                    style: TextStyle(
                                      color: Color(0x7F27413C),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'JUST ANOTHER',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 6,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                    'Fusce augue ipsum, laoreet vitae dictum at, sodales dictum tellus. '
                                    'Cras ac odio vehicula tortor pretium sodales.',
                                    style: TextStyle(
                                      color: Color(0x7F003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 76.0),
            child: Row(children: [
              Container(
                width: 347.50,
                //height: 370,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('images/Rectangle85.png'),
                            // Update with the correct path
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(27.0),
                          child: Text(
                            'TAGS',
                            style: TextStyle(
                              color: Color(0xFFF89630),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 6,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'SEEDS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'LONG TAG',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'VERY LONG TAG',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            // Add spacing between the two sets of chips
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'SEEDS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'SEEDS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Color(0xFFF6F6F6),
                                  label: Text(
                                    'SEEDS',
                                    style: TextStyle(
                                      color: Color(0xFF003649),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Chip(
                              backgroundColor: Color(0xFFF6F6F6),
                              label: Text(
                                'VERY LONG TAG',
                                style: TextStyle(
                                  color: Color(0xFF003649),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ])),
        SizedBox(
          height: 20,
        )
      ]),

      // bottomNavigationBar:  BottomNavigationBar(
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
      //
      //
      // ),
    );
  }
}
