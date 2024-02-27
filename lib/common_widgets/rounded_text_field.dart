import 'package:flutter/material.dart';
import 'package:ott_code_frontend/common/color_extension.dart';

class RoundedTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String title;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? right;

  const RoundedTextField(
      {super.key,
      required this.title,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.right});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: TextStyle(
            color: ApplicationColor.text,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        decoration: BoxDecoration(
            color: ApplicationColor.cardDark,
            borderRadius: BorderRadius.circular(9),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(0, 4))
            ]),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                autocorrect: false,
                obscureText: obscureText,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: ApplicationColor.subText)),
              ),
            ),
            right ?? const SizedBox(),
          ],
        ),
      )
    ]);
  }
}
