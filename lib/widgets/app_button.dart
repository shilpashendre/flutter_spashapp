import 'package:flutter/material.dart';
import 'package:splash_app/constants/strings.dart';
import 'package:splash_app/constants/app_text_theme.dart';
import 'package:splash_app/constants/theme.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppButtondState();
  }
}

class _AppButtondState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
          onPressed: () {},
          child: Container(
              decoration: const BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  Strings.login,
                  style: AppTextTheme.buttonTextStyle,
                  textAlign: TextAlign.center,
                ),
              ))),
    );
  }
}
