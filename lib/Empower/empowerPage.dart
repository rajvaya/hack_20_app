import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/Empower/journaling_page.dart';
import 'package:hack20app/Empower/power_task.dart';
import 'package:hack20app/Empower/support_system.dart';

import '../DataFile.dart';
import '../vrtest.dart';

class Empower extends StatefulWidget {
  @override
  _EmpowerState createState() => _EmpowerState();
}

class _EmpowerState extends State<Empower> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: size.height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Hi, Raj',
                    style: GoogleFonts.poppins(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Color(0Xff1A1A1A)),
                  ),
                  CircleAvatar(
                    radius: size.height * 0.035,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://designoholic.com/wp-content/uploads/2017/07/avatar-colored-d.png",
                        scale: 2),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>VrDemo()));              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Data().vr60,
                    borderRadius: BorderRadiusDirectional.circular(16)),
                child: Banner(
                  message: "Exculsive",
                  location: BannerLocation.topEnd,
                  color: Colors.pink,

                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://i.ibb.co/JF7ZnxS/Virtual-reality-amico.png",
                              height: 120,
                              width: 120,
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0, left: 16),
                            child: Text(
                              'VR Tour',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xff1A1A1A)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 120, bottom: 16),
                            child: Text(
                              'Wander the world in Quarantine through the magic of VR',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0Xff1A1A1A).withOpacity(0.8),
                                letterSpacing: 0.2,
                                wordSpacing: 0.2,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SupportSystem()));
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Color(0Xff73D0E6).withOpacity(0.6),
                    borderRadius: BorderRadiusDirectional.circular(16)),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                          "https://i.ibb.co/x7YPjH6/Community-rafiki.png",
                          height: 120,
                          width: 120,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16),
                          child: Text(
                            'Support System',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 120, bottom: 16),
                          child: Text(
                            'Get Support from community by sharing mental health struggles without revealing  your identity',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0Xff1A1A1A).withOpacity(0.8),
                              letterSpacing: 0.2,
                              wordSpacing: 0.2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PowerTask()));
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Color(0XffFEDE77).withOpacity(0.6),
                    borderRadius: BorderRadiusDirectional.circular(16)),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                          "https://i.ibb.co/M8t3J4n/Chilling-amico.png",
                          height: 130,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16),
                          child: Text(
                            'Power Tasks',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 120, bottom: 16),
                          child: Text(
                            'Take a break and do relaxing activities That helps to heal your Mind',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0Xff1A1A1A).withOpacity(0.8),
                              letterSpacing: 0.2,
                              wordSpacing: 0.2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>JournalingPage()));
              },
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                    color: Color(0XffFBA5B1).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(16)),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                          "https://i.ibb.co/JHRrS36/Notebook-bro.png",
                          height: 130,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16),
                          child: Text(
                            'Journaling',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 120, bottom: 16),
                          child: Text(
                            'Journaling helps control your symptoms and improve your mood by: Helping you prioritize problems, fears, and concerns.',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0Xff1A1A1A).withOpacity(0.8),
                              letterSpacing: 0.2,
                              wordSpacing: 0.2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
