 import 'package:flutter/material.dart';



class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool checkbox0 = false; // Additional checkbox
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  bool checkbox5 = false;
  bool checkbox6 = false;
  bool checkbox7 = false;
  bool checkbox8 = false;
  bool showSlider = false;
  double distance = 1.0; // Initial distance value
  double minDistance = 1.0; // Minimum distance value
  double maxDistance = 5.0; // Maximum distance value
  double thumbRadius = 16.0;
  void clearAllCheckboxes() {
    setState(() {
      checkbox0 = false;
      checkbox1 = false;
      checkbox2 = false;
      checkbox3 = false;
      checkbox4 = false;
      checkbox5 = false;
      checkbox6 = false;
      checkbox7 = false;
      checkbox8 = false;
      showSlider = false;
    });
  }

  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Filters',
          style: TextStyle(
            color: Color(0xFF27413C),
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [
          ElevatedButton(
            onPressed: () {
              clearAllCheckboxes();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Color(0xFFF89630), // Text color
              shadowColor: Colors.transparent, // Remove shadow
              minimumSize: Size(0, 0),
            ),
            child: Text(
              'Clear All',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),

      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: checkbox0,
                        onChanged: (newValue) {
                          setState(() {
                            checkbox0 = newValue!;
                            showSlider = newValue!;
                          });
                        },
                        activeColor: Color(
                            0xFFF89630), // Custom color for checkbox when checked
                      ),
                      Text(
                        'Filter by Location Radius',
                        style: TextStyle(
                          color: Color(0xFF003649),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      disabledThumbColor:
                          showSlider ? Color(0xFFF89630) : Color(0xFFF89630),
                      disabledActiveTrackColor:
                          showSlider ? Color(0xFFF89630) : Color(0xFFF89630),

                    ),
                    child: Slider(
                      value: distance,
                      onChanged: showSlider
                          ? (newValue) {
                              setState(() {
                                distance = newValue;
                              });
                            }
                          : null, // Set onChanged to null when the slider is disabled
                      min: 1.0,
                      max: 5.0,
                      divisions: 2,
                      label: '${distance.toInt()} mi',
                      activeColor: Color(0xFFF89630),
                      inactiveColor: Colors.grey,
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Text(
                          '${minDistance.toInt()} mi',
                          style: TextStyle(
                            color: Color(0xFF003649),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        '2 mi',
                        style: TextStyle(
                          color: Color(0xFF003649),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${maxDistance.toInt()} mi',
                        style: TextStyle(
                          color: Color(0xFF003649),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter by Categories',
                  style: TextStyle(
                    color: Color(0xFF003649),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle search icon tap action here
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'images/eva_arrow-ios-downward-fill.png', // Custom search icon
                      width: 40.0, // Adjust icon size as needed
                      height: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox1,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox1 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Category Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox2,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox2 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Category Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox3,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox3 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Category Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox4,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox4 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Category Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            // Add similar code for other categories
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter by Tags',
                  style: TextStyle(
                    color: Color(0xFF003649),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle search icon tap action here
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'images/eva_arrow-ios-downward-fill.png', // Custom search icon
                      width: 40.0, // Adjust icon size as needed
                      height: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox5,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox5 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Tag Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox6,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox6 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Tag Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox7,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox7 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Tag Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: checkbox8,
                  onChanged: (newValue) {
                    setState(() {
                      checkbox8 = newValue!;
                    });
                  },
                  activeColor: Color(0xFFF89630),
                ),
                SizedBox(
                  width: 301,
                  child: Text(
                    'Tag Name',
                    style: TextStyle(
                      color: Color(0xFF003649),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            // Add similar code for other tags
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(1.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/businesssearch');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFF89630),
              onPrimary: Colors.white,
              minimumSize: Size(double.infinity, 60.0),
            ),
            child: Text(
              'Apply',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
