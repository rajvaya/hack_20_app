import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/DataFile.dart';
import 'package:hack20app/Empower/power_task.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DiscoverHome extends StatefulWidget {
  DiscoverHome({Key key}) : super(key: key);

  @override
  _DiscoverHomeState createState() => _DiscoverHomeState();
}

class _DiscoverHomeState extends State<DiscoverHome> {

  var feed= [
    PoadcastData("https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/99pi.svg/1200px-99pi.svg.png", "99% Invisible", "Roman Mars  • June 28","16.33"),
    PoadcastData("https://rachelcorbett.com.au/wp-content/uploads/2018/07/Neon-podcast-logo.jpg", "WTF podcast", "Bard Trump  • June 25","11.33"), PoadcastData("https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/99pi.svg/1200px-99pi.svg.png", "99% Invisible", "Roman Mars  • June 28","16.33"),
    PoadcastData("https://rachelcorbett.com.au/wp-content/uploads/2018/07/Neon-podcast-logo.jpg", "WTF podcast", "Bard Trump  • June 25","11.33"),
    MemeData("https://i.pinimg.com/736x/43/c7/38/43c738b17972e3adec62a943bb7b9043.jpg"),
    MemeData("https://i.pinimg.com/736x/43/c7/38/43c738b17972e3adec62a943bb7b9043.jpg"),
    MemeData("https://www.probytes.net/wp-content/uploads/2018/01/8-1.jpg"),
    MemeData("https://external-preview.redd.it/lIPUeKFOI5tcj85H8fcNgjGWLAGGNAbCvde-mkqhaN4.png?auto=webp&s=52345cf9d85662cbc2c0019c162e1fe801db3464"),
    BlogData("Microsoft Kills One of Its Best Windows 10 Update Loopholes", "gizmodo", "8 min Read", "https://i.kinja-img.com/gawker-media/image/upload/c_scale,f_auto,fl_progressive,pg_1,q_80,w_1600/ssdaacvjjwrpmcagmzty.png"),
    BlogData("The End of the Girlboss Is Here", "Medium", "11 min Read", "https://miro.medium.com/max/2000/1*juZoQ6-WJiI27I0IWi2oHQ.jpeg"),
    BlogData("Elon Musk's SpaceX To Launch More Starlink Satellites: Here's How To Watch The Launch", "mashable", "5 min Read", "https://sm.mashable.com/t/mashable_in/photo/default/spacex-falcon-9_ye93.960.jpg"),
    BlogData("The modern mobile app needs a revamp", "TechCrunch", "8 min Read", "https://techcrunch.com/wp-content/uploads/2020/06/app-clips-2.jpg?w=1390&crop=1"),
  ];
  var colors= [

    Data().blue60,
    Data().yellow60,
    Data().pink60,
  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feed.shuffle();
  }

  @override
  Widget build(BuildContext context) {
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
              'Discover',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff1A1A1A)),
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(0,8.0,0,8.0),
              itemCount: feed.length,
              itemBuilder: (BuildContext context, int index) {
                 if(feed[index] is MemeData){
                   return Meme(bgcolor: colors[index%3],data: feed[index],);
                 }
                 if(feed[index] is PoadcastData){
                   return PodCastCard(bgcolor: colors[index%3],data: feed[index],);
                 }
                 if(feed[index] is BlogData){
                   return BlogCard(bgcolor: colors[index%3],data: feed[index],);
                 }
                 return Container();
              },
            ),
          ),
//          PodCastCard(
//            bgcolor: Data().pink60,
//          ),
//          BlogCard(
//            bgcolor: Data().pink60,
//          ),
//          Meme(
//            bgcolor: Data().pink60,
//          ),

        ],
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final Color bgcolor;
  final BlogData data;

  const BlogCard({Key key, this.bgcolor, this.data}) : super(key: key);
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
                      data.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(
                  data.title,
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
                      "Source : "+data.source,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0Xff1A1A1A)),
                    ),
                    Text(
                     data.time,
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
  final MemeData data;
  const Meme({Key key, this.bgcolor, this.data}) : super(key: key);
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
                 data.url,
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
  final PoadcastData data;


  const PodCastCard({Key key, this.bgcolor, this.data}) : super(key: key);
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
            child:Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          data.img,
                        fit: BoxFit.cover,
                      ),
                      ),
                    )   , Expanded(
                      flex: 3,
                      child:Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              data.title,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xff1A1A1A)),
                            ),
                            Text(
                             data.description,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0Xff1A1A1A)),
                            ),

                          ],
                        ),
                      )
                    )
                  ],
                ),
                Slider.adaptive(value: 0, onChanged: (v){

                },max: 10,
                  activeColor: Data().black100,
                  inactiveColor: Data().black100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "0.0",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0Xff1A1A1A)),
                      ),
                      Text(
                        data.duration,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0Xff1A1A1A)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(icon: Icon(MdiIcons.rewind),onPressed: (){},color: Data().black100,),
                      IconButton(icon: Icon(MdiIcons.playCircle),onPressed: (){},color: Data().black100,iconSize: 50,),
                      IconButton(icon: Icon(MdiIcons.fastForward),onPressed: (){}, color:Data().black100,),
                    ],
                  ),
                ),



              ],
            ),

          ),
        ));
  }
}

class MemeData{
  final String url;
  MemeData(this.url);
}

class PoadcastData{
  final String img;
  final String title;
  final String description;
  final String duration;

  PoadcastData(this.img, this.title, this.description, this.duration);



}

class BlogData{
  final String url;
  final String title;
  final String source;
  final String time;
  BlogData(this.title, this.source, this.time, this.url);


}

