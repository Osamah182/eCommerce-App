import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String textTitle;
  const CustomTextTitleAuth({Key? key, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black87));
    ;
  }
}
