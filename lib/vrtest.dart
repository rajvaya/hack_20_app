import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
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
          color: Data().pink60,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(),
              Text(
                'Flutter WebVR',
                style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Data().blue100,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'ENTER',
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
        // NOTE: Replace this URL with your GitHub Pages URL.
        'https://aframe.io/examples/showcase/helloworld/',
        option: CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: false,
          animation: CustomTabsAnimation.slideIn(),
          extraCustomTabs: const <String>[
            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
            'org.mozilla.firefox',
            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
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