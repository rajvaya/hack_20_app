import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: SingleChildScrollView(
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
                          fontSize: 30,
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
                          padding: const EdgeInsets.only(top:16.0,left: 16),
                          child: Text(
                            'Support System',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16,right: 120,bottom: 16),
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
            Padding(
              padding: EdgeInsets.all(16),
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
                          padding: const EdgeInsets.only(top:16.0,left: 16),
                          child: Text(
                            'Power Tasks',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16,right: 120,bottom: 16),
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
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                        color: Color(0XffFBA5B1).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)
                    ),
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
                              padding: const EdgeInsets.only(top:16.0,left: 16),
                              child: Text(
                                'Journaling',
                                style: GoogleFonts.poppins(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0Xff1A1A1A)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16,right: 120,bottom: 16),
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
            ),

          ],
        ),
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
