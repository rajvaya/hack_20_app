import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/DataFile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SupportSystem extends StatefulWidget {
  SupportSystem({Key key}) : super(key: key);

  @override
  _SupportSystemState createState() => _SupportSystemState();
}

class _SupportSystemState extends State<SupportSystem> {

  var colors= [

    Data().blue60,
    Data().yellow60,
    Data().pink60,
  ];
  
  var data  =<SupportCardData>[
    SupportCardData("My dog died yesterday, and I'm really sad about it. He was my favorite pet and my whole family misses him. Has anyone else lost a pet? ", 10, 20, 32),
    SupportCardData("Finals week is so rough always. Can't wait to be done. I could really use a time machine right nowt° go into the future.", 50, 31, 42),
    SupportCardData("It's been a while since I've sat down and relaxed. Life's just been so busy, and it's no difficult to figure out ways to take a step back. Does anyone have any advice? ", 11, 36, 22),    SupportCardData("My dog died yesterday, and I'm really sad about it. He was my favorite pet and my whole family misses him. Has anyone else lost a pet? ", 10, 20, 32),
    SupportCardData("Finals week is so rough always. Can't wait to be done. I could really use a time machine right nowt° go into the future.", 37, 24, 42),
    SupportCardData("It's been a while since I've sat down and relaxed. Life's just been so busy, and it's no difficult to figure out ways to take a step back. Does anyone have any advice? ", 52, 63, 29),
  ] ;
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XffFDFDFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 0),
            child: Text(
              'Feed',
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
                          padding: const EdgeInsets.only(top:16.0,left:16),
                          child: Text(
                            'Share Your Struggles With Community',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0Xff1A1A1A)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                side: BorderSide(color: Color(0xFF53A6D4))),
                            onPressed: () {},
                            color:Color(0xFF53A6D4),
                            textColor: Colors.white,
                            child: Text(
                              'Post Now',
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
                            "https://i.ibb.co/zhdCZrK/Mental-health-bro.pngx",
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
                  'Recent Feed:',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff1A1A1A)),
                ),
                Icon(MdiIcons.filterVariant,color: Data().black100,),
              ],
            ),
          ),
//          Center(
//            child: Padding(
//              padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
//              child: SizedBox(
//                height: size .height* 0.15,
//                child:  TextField(
//                  expands: true,
//                  decoration: InputDecoration(
//                    hintText: "Share Your Mental Struggles",
//                    focusedBorder: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                      borderSide: BorderSide(width: 1,color: Data().pink60),
//                    ),
//                    enabledBorder: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                      borderSide: BorderSide(width: 1,color:Data().blue60),
//                    ),
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(4)),
//                        borderSide: BorderSide(width: 1,)
//                    ),
//                  ) ,
//                  keyboardType: TextInputType.multiline,
//                  minLines: null,//Normal textInputField will be displayed
//                  maxLines: null,// when user presses enter it will adapt to it
//                ),
//              )
//            ),
//          ),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(0,8.0,0,8.0),
              itemCount:data.length,
              itemBuilder: (BuildContext context, int index) {
                 return SupportFeedCard(bgcolor: colors[index%3],data: data[index],);
              },
            ),
          ),
        ],
      ),
    );
  }
}


class SupportFeedCard extends StatelessWidget {
  final Color bgcolor;
  final SupportCardData data;

  SupportFeedCard({Key key, this.bgcolor, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 16),
      child: Container(
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadiusDirectional.circular(16)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(data.Name,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff1A1A1A).withOpacity(0.8),
                  letterSpacing: 0.2,
                  wordSpacing: 0.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(MdiIcons.heart ,color: (data.Love.isEven)?Data().blue100:Colors.grey,),
                  Icon(MdiIcons.thumbUp,color: (data.Likes.isEven)?Data().yellow100:Colors.grey,),
                  Icon(MdiIcons.handshake,color: (data.Support.isEven)?Data().pink100:Colors.grey,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                  ),
                  child: Row(
                    children: <Widget>[
                     Expanded(
                       flex: data.Likes,
                       child: Container(
                         color: Data().blue100,
                       ),
                     ),
                     Expanded(
                       flex: data.Love,
                       child: Container(
                         color: Data().yellow100,
                       ),
                     ),
                     Expanded(
                       flex: data.Support,
                       child: Container(
                         color: Data().pink100,
                       ),
                     ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        width: double.maxFinite,
      ),
    );
  }
}


class SupportCardData{
  final String Name;
  final int Likes;
  final int Love;
  final int Support;
  SupportCardData(this.Name, this.Likes, this.Love, this.Support);
}