import 'package:flutter/material.dart';
import 'package:uikitview_example/uikitview_example.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('EXAMPLE')),
        body: ListView.separated(
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: 300.0,
            child: IOSView(),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 20.0),
          itemCount: 20,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (ctx) => new Center(
                child: Text('Borders still on the screen'),
              ),
            );
          },
          child: Text('TAP'),
        ),
      );
}
