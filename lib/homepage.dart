import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Empower/empowerPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  var controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: PageView(
        physics: ClampingScrollPhysics(),
        controller: controller,
        children: [
          Placeholder(),
          Empower(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        child: BottomNavigationBar(
            elevation: 20,
            currentIndex: index,
            backgroundColor: Color(0XffFDFDFD),
            selectedItemColor: Color(0XffFBA5B1).withOpacity(0.6),
            onTap: (int) {
              print(int.toString());
              setState(() {
                index = int;
                controller.animateToPage(int, duration: Duration(milliseconds: 500), curve: Curves.easeInOutCirc);
              });
            },
            items: [
              BottomNavigationBarItem(
                  title: Container(), icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  title: Container(), icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  title: Container(), icon: Icon(Icons.favorite))
            ]),
      ),
    );
  }
}
