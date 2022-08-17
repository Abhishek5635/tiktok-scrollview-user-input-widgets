import 'package:flutter/material.dart';
import 'package:user_input/tik%20tok%20scrollview/pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TikTok()

        // TikTok() this method is for Tiktok scroll view  calling widget programme

        // MyWidget()    this method is for user input calling widget programme
        );
  }
}
