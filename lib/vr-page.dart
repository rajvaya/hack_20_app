import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack20app/DataFile.dart';

class VrDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter VR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Data().vr60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(),
              Text(
                'Flutter WebVR',
                style: GoogleFonts.poppins(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Data().black100),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Note : This is Experimental Feature Flutter Don't Support Virtual Reality This Feature is Done Using Chrome and WebVr. Here i am using \nhttps://nigereepps.github.io/webvr \n for Demo",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0Xff1A1A1A),
                    backgroundColor: Colors.red
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color(0xFF53D496).withOpacity(1),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () => _launchURL(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(BuildContext context) async {
    try {
      await launch(
      "https://3dyt.hcilab.ml/#e9Nv04lGYE4,229",
        option: CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: false,
          animation: CustomTabsAnimation.slideIn(),
          extraCustomTabs: const <String>[
            'org.mozilla.firefox',
            'com.microsoft.emmx',
          ],
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }
}