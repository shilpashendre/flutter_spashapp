import 'package:flutter/material.dart';
import 'package:splash_app/constants/Strings.dart';
import 'package:splash_app/constants/app_text_theme.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppCheckBoxState();
  }
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Checkbox(
              value: _checkBoxValue,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  _checkBoxValue = newValue ?? false;
                });
              }),
        ),
        const Text(Strings.rememberMe, style: AppTextTheme.forgetPassowrd)
      ],
    );
  }
}
