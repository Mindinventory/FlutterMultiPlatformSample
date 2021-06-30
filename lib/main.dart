import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multiplatform_sample/home_screen.dart';

void main() {
  // To set system navigation bar color to black
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));

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
      home: HomeScreen(),
    );
  }
}

