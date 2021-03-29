import 'dart:typed_data';

import 'package:cv_maker/resume.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

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
