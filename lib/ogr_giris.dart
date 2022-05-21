import 'package:flutter/material.dart';
import 'main.dart';

class ogr_giris extends StatefulWidget {
  late bool command;
  ogr_giris(this.command);
  @override
  State<ogr_giris> createState() => _ogr_girisState();
}

class _ogr_girisState extends State<ogr_giris> {
  var _text;
  //bool komut = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: widget.command,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white10),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
              onChanged: (text) => setState(() => _text),
            ),
          ),
        ));
  }
}
