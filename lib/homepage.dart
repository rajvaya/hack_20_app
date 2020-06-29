import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack20app/Discover/discover_home.dart';
import 'package:hack20app/Health/health_home.dart';
import 'package:hack20app/my_flutter_app_icons.dart';
import 'DataFile.dart';
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
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),

      body: PageView(
        physics: new NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          HealthHome(),
          Empower(),
          DiscoverHome(),
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
            onTap: (int) {
              print(int.toString());
              setState(() {
                index = int;
                controller.animateToPage(int,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutCirc);
              });
            },
            items: [
              BottomNavigationBarItem(
                  title: Container(),
                  icon: (index == 0)
                      ? Icon(
                          MyFlutterApp.med_fill,
                          color: Data().yellow100,
                        )
                      : Icon(
                          MyFlutterApp.med,
                          color: Data().black100,
                        )),
              BottomNavigationBarItem(
                  title: Container(),
                  icon: (index == 1)
                      ? Icon(
                          MyFlutterApp.empower_fill,
                          color: Data().pink100,
                        )
                      : Icon(
                          MyFlutterApp.empower,
                          color: Data().black100,
                        )),
              BottomNavigationBarItem(
                  title: Container(),
                  icon: (index == 2)
                      ? Icon(
                          MyFlutterApp.feed_fill,
                          color: Data().blue100,
                        )
                      : Icon(
                          MyFlutterApp.feed,
                          color: Data().black100,
                        ))
            ]),
      ),
    );
  }
}
