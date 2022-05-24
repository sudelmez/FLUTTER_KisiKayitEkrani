import 'package:flutter/material.dart';
import 'main.dart';

class ogr_giris extends StatefulWidget {
  late bool command;
  var kmt;
  ogr_giris(this.command);
  @override
  State<ogr_giris> createState() => _ogr_girisState();
}

class _ogr_girisState extends State<ogr_giris> {
  var _text = "";
  var _text2 = "";
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();

  void _submit() {}

  String? get _errorText {
    final text = _controller.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }

    return null;
  }

  String? get _errorText2 {
    final text2 = _controller2.value.text;

    if (text2.isEmpty) {
      return 'Can\'t be empty';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.command,
      child: AlertDialog(
        title: const Text('Öğrenci Kayıt'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  errorText: _errorText,
                  labelText: 'Öğrenci Adı:',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                onChanged: (text) => setState(() => _text),
              ),
              TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  errorText: _errorText2,
                  labelText: 'Öğrenci Soyadı:',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                onChanged: (text) => setState(() => _text),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                if (_errorText == null && _errorText2 == null) {
                  Navigator.of(context).pop();
                }
                return null;
              },
              child: Text('KAYDET'))
        ],
      ),
    );

    /*Visibility(
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
        ));*/
  }
}
