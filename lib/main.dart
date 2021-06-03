import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';

void main() {
  // To set system navigation bar color to black
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black));

  runApp(MultiPlatformSampleApp());
}

class MultiPlatformSampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi-platform',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/mindful_eng.png',
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '(${getPlatformName()})',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  /// Will,
  ///
  /// Give the platform-name on which the application was compiled and run.
  String getPlatformName() {
    var platformName = '';
    // kIsWeb will be true if running platform is web
    if (kIsWeb) {
      platformName = 'Web';
    } else {
      // Check for in which platform the app is run other than web
      if (Platform.isAndroid) {
        platformName = 'Android';
      } else if (Platform.isIOS) {
        platformName = 'iPhone';
      } else if ((Platform.isLinux) ||
          (Platform.isMacOS) ||
          (Platform.isWindows)) {
        platformName = 'Desktop';
      } else {
        platformName = 'Unidentified';
      }
    }
    return platformName;
  }
}
