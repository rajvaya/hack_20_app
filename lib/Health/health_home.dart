import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/Empower/journaling_page.dart';
import 'package:hack20app/Empower/power_task.dart';
import 'package:hack20app/Empower/support_system.dart';
import 'package:hack20app/Health/dummy_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../DataFile.dart';

class HealthHome extends StatefulWidget {
  HealthHome({Key key}) : super(key: key);

  @override
  _HealthHomeState createState() => _HealthHomeState();
}

class _HealthHomeState extends State<HealthHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 0),
            child: Text(
              'Health',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff1A1A1A)),
            ),
          ),
         Flexible(
           child: ListView(
             padding: EdgeInsets.zero,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(16),
                 child: InkWell(
                   onTap: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (BuildContext context) => DummyHealthPage(title: "Meditation",url: "https://i.ibb.co/j6nS1bB/Meditation-bro.png",color: Data().yellow60,)));
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
                               "https://i.ibb.co/j6nS1bB/Meditation-bro.png",
                               height: 130,
                             )),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top: 16.0, left: 16),
                               child: Text(
                                 'Meditation',
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
                                 'Mindfulness can: help relieve stress, lower blood pressure, reduce chronic pain, and improve sleep.',
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
                             builder: (BuildContext context) => DummyHealthPage(title: "Yoga",url: "https://i.ibb.co/pK7hsv0/Healthy-habit-pana.png",color: Data().blue60,)));
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
                               "https://i.ibb.co/pK7hsv0/Healthy-habit-pana.png",
                               height: 120,
                               width: 120,
                             )),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top: 16.0, left: 16),
                               child: Text(
                                 'Yoga',
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
"Practicing the postures, breathing exercises and meditation makes you healthier in body,",
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
                             builder: (BuildContext context) =>DummyHealthPage(title: "exercise",url: "https://i.ibb.co/y0xVz1G/Workout-rafiki.png",color: Data().pink60,)));
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
                               "https://i.ibb.co/y0xVz1G/Workout-rafiki.png",
                               height: 130,
                             )),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top: 16.0, left: 16),
                               child: Text(
                                 'Exercise',
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
                                 'Regular exercise can have a profoundly positive impact on depression, anxiety, ADHD, and more',
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
         )
        ],
      ),
    );
  }
}

class HealthCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo[300],
          borderRadius: BorderRadius.circular(16),
        ),
        width:  MediaQuery.of(context).size.height * 0.3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}

