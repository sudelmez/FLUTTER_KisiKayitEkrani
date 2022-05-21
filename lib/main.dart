import 'package:flutter/material.dart';
import 'ogr_giris.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool komut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: ogr_giris(komut),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            komut = true;
          });
        },
      ),
    );
  }
}
