import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/DataFile.dart';

class DiscoverHome extends StatefulWidget {
  DiscoverHome({Key key}) : super(key: key);

  @override
  _DiscoverHomeState createState() => _DiscoverHomeState();
}

class _DiscoverHomeState extends State<DiscoverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            PodCastCard(
              bgcolor: Data().pink60,
            ),
            BlogCard(
              bgcolor: Data().pink60,
            ),
            Meme(
              bgcolor: Data().pink60,
            ),

          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final Color bgcolor;

  const BlogCard({Key key, this.bgcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadiusDirectional.circular(16)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    width: double.maxFinite,
//                    child: Placeholder(),
                    child: Image.network(
                      "https://www.statnews.com/wp-content/uploads/2017/05/AP151547368-768x432.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(
                  "It’s time to recognize mental health as essential to physical health",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff1A1A1A)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Source : XYZ",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0Xff1A1A1A)),
                    ),
                    Text(
                      "7min Read",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0Xff1A1A1A)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Meme extends StatelessWidget {
  final Color bgcolor;
  const Meme({Key key, this.bgcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadiusDirectional.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: double.maxFinite,
//                    child: Placeholder(),
                child: Image.network(
                  "https://pics.me.me/mental-detonation-72522742.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}

class PodCastCard extends StatelessWidget {
  final Color bgcolor;

  const PodCastCard({Key key, this.bgcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadiusDirectional.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(
                    height: double.infinity,
                    color: Colors.grey,
                  ),
                )   , Expanded(
                  flex: 3,
                  child:Container(
                    height: 19,
                    color: Colors.red,
                  ),
                )
              ],
            ),
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(16),
//              child: SizedBox(
//                width: double.maxFinite,
////                    child: Placeholder(),
//                child: Image.network(
//                  "https://pics.me.me/mental-detonation-72522742.png",
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
          ),
        ));
  }
}

