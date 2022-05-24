import 'package:flutter/material.dart';
import 'ogr_giris.dart';

class controlx extends StatefulWidget {
  late String isim;
  late String soyad;
  late String controlling;
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  // controlx({});
  @override
  State<controlx> createState() => _controlState();
}

class _controlState extends State<controlx> {
  var _text = "";
  var _text2 = "";

  void submit() {
    if (errorText == null && errorText2 == null) {
      /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => null),
      );*/
    }
    return null;
  }

  String? get errorText {
    final text = this.widget.controller1.value.text.toString();

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }

    return null;
  }

  String? get errorText2 {
    final text2 = this.widget.controller2.value.text;

    if (text2.isEmpty) {
      return 'Can\'t be empty';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
