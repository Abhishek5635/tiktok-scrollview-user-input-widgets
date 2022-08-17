import 'package:flutter/material.dart';
import 'package:user_input/tik%20tok%20scrollview/first_page.dart';
import 'package:user_input/tik%20tok%20scrollview/second_page.dart';

class TikTok extends StatelessWidget {
  const TikTok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controler = PageController();
    return Scaffold(
      body: PageView(
        controller: _controler,
        scrollDirection: Axis.vertical,
        children: [Firstpage(), Secondpage()],
      ),
    );
  }
}
