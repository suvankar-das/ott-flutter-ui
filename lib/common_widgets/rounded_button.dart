import 'package:flutter/material.dart';
import 'package:ott_code_frontend/common/color_extension.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const RoundedButton(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: ApplicationColor.primaryG,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(9),
          boxShadow: ApplicationColor.themeModeDark
              ? null
              : [
                  BoxShadow(
                      color: ApplicationColor.primaryColor.withOpacity(0.5),
                      blurRadius: 9,
                      offset: const Offset(0, 4))
                ]),
      alignment: Alignment.center,
      child: Text(title,
          style: TextStyle(
              color: ApplicationColor.text,
              fontSize: 15,
              fontWeight: FontWeight.w700)),
    );
  }
}
