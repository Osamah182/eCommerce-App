import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {Key? key, required this.text1, required this.text2, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(width: 7),
          InkWell(
            onTap: onTap,
            child: Text(
              text2,
              style: TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
