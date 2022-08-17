import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _textcontroller = TextEditingController();
  // store user text input int variable
  String Userpost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 205, 215),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // result shower on Top
            Expanded(
                child: Container(
              child: Center(child: Text(Userpost)),
            )),

            // Text bar
            TextField(
              controller: _textcontroller,
              decoration: InputDecoration(
                  hintText: 'enter your text',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textcontroller.clear();
                      },
                      icon: Icon(Icons.clear))),
            ),
            // Post Button
            MaterialButton(
              onPressed: () {
                setState(() {
                  Userpost = _textcontroller.text;
                });
              },
              child: const Text(
                'Post',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
