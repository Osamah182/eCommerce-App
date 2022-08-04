// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText1;
  final String label1;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?) valid;

  const CustomTextFormAuth(
      {Key? key,
      required this.hintText1,
      required this.label1,
      required this.iconData,
      required this.myController,
      required this.valid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: TextFormField(
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
            hintText: hintText1,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            label: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(label1)),
            suffixIcon: Icon(iconData),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
