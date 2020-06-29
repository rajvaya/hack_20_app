import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../DataFile.dart';

class DummyHealthPage extends StatefulWidget {
  final String title;
  final String url;
  final Color color;
  DummyHealthPage({Key key, this.title, this.url, this.color}) : super(key: key);

  @override
  _DummyHealthPageState createState() => _DummyHealthPageState();
}

class _DummyHealthPageState extends State<DummyHealthPage> {
  var colors= [
    Data().blue60,
    Data().yellow60,
    Data().pink60,
  ];
  var colors2= [
    Data().pink60,
    Data().yellow60,
    Data().blue60,
  ];
  // ignore: non_constant_identifier_names
  var Tasks= [
    "Lorem ipsum dolor sit amet, erat libero accumsan diam, eget auctor risus nunc vitae leo.",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 0),
            child: Text(
              widget.title,
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff1A1A1A)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadiusDirectional.circular(16)),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0,16.0,size.width*0.4,0),
                        child: Text(
                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0Xff1A1A1A)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0,16.0,size.width*0.4,0),
                        child: Text(
                          'View Guides',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0Xff1A1A1A)),
                          textAlign: TextAlign.left,
                        ),
                      ),

                    ],
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.network(
                          widget.url,
                          height: 130,
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:  Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                side: BorderSide(color: Color(0xFF53D496))),
                            onPressed: () {},
                            color:Color(0xFF53D496),
                            textColor: Colors.white,
                            child: Text(
                              'Start',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xffffffff)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(width: 24,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                side: BorderSide(color: Color(0xFF53A6D4))),
                            onPressed: () {},
                            color:Color(0xFF53A6D4),
                            textColor: Colors.white,
                            child: Text(
                              'Change',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xffffffff)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Meditation Guides',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff1A1A1A)),
                ),
                Icon(MdiIcons.filterVariant,color: Data().black100,),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(0,8.0,0,8.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return TaskCard(bgcolor: (widget.color==Data().blue60)?colors2[index%3]:colors[index%3],task: Tasks[0],);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final Color bgcolor;
  final String task;
  TaskCard({Key key, this.bgcolor, this.task}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadiusDirectional.circular(16)),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                task,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0Xff1A1A1A)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8,bottom: 16,right: 16,left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: Color(0xFF53D496))),
                    onPressed: () {},
                    color:Color(0xFF53D496),
                    textColor: Colors.white,
                    child: Text(
                      'Start',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0Xffffffff)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 16,),
                  Text(
                    "view Guides",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0Xff1A1A1A)),
                  ),

                ],
              ),
            ),
          ],
        ) ,

      ),
    );
  }
}
