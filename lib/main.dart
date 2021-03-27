import 'package:flutter/material.dart';

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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 42,
            horizontal: 36,
          ),
          color: Colors.orange,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "YM",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 48),
                  color: Colors.purple,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name Namename Namename",
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        "Prime minister of New Zealand".toUpperCase(),
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 42,
                    horizontal: 36,
                  ),
                  color: Colors.green,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 42,
                    horizontal: 36,
                  ),
                  color: Colors.red,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
