import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/DataFile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class JournalingPage extends StatefulWidget {
  JournalingPage({Key key}) : super(key: key);

  @override
  _JournalingPageState createState() => _JournalingPageState();
}

class _JournalingPageState extends State<JournalingPage> {

  var colors= [
    Data().blue60,
    Data().yellow60,
    Data().pink60,
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
            child: Text (
              'Welcome Back',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff1A1A1A)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  color: Data().pink60,
                  borderRadius: BorderRadiusDirectional.circular(16)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Hey! How are you feeling right now? ',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                            textAlign: TextAlign.left,
                          ),
                        ),
     Center(
       child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  side: BorderSide(color: Color(0xFF53A6D4))),
                              onPressed: () {},
                              color:Color(0xFF53A6D4),
                              textColor: Colors.white,
                              child: Text(
                                'Write Now',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0Xffffffff)),
                                textAlign: TextAlign.left,
                              ),
                            ),
     ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.network(
                            "https://i.ibb.co/0XdTYD6/Notes-bro.png",
                            height: 130,
                          ),
                        )),
                  ),

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
                  'Recent Journals:',
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
                return JournalCard(bgcolor: colors[index%3]);
              },
            ),
          ),
        ],
      ),
    );
  }
}


class JournalCard extends StatelessWidget {
  final Color bgcolor;
  const JournalCard({Key key, this.bgcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadiusDirectional.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Text("Created on June 28",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff1A1A1A),),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",maxLines: 3,overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0Xff1A1A1A)),),

            ],
          ),
        ),

      ),
    );
  }
}
