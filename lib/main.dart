import 'dart:typed_data';

import 'package:cv_maker/resume.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScreenshotController _screenshotController;
  Uint8List? _imageFile;

  @override
  void initState() {
    super.initState();

    _screenshotController = ScreenshotController();
  }

  void takeScreenshot() {
    _screenshotController.capture().then((image) {
      setState(() {
        _imageFile = image;
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_imageFile == null)
        ? GestureDetector(
            onTap: () {
              takeScreenshot();
            },
            child: SingleChildScrollView(
              child: Screenshot(
                controller: _screenshotController,
                child: const Resume(),
              ),
            ),
          )
        : ListView(
            children: [
              Image.memory(_imageFile!),
              const Text("WOW"),
            ],
          );
  }
}
