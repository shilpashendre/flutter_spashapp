import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splash_app/constants/images.dart';
import 'package:splash_app/constants/theme.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool? isfieldTypePassword;
  const AppTextFormField(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.isfieldTypePassword = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppTextFormFieldState();
  }
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.labelText,
            fillColor: Colors.white,
            floatingLabelStyle: const TextStyle(color: green),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: green, width: 1),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: grey,
                width: 1.0,
              ),
            ),
            suffixIcon: widget.isfieldTypePassword ?? false
                ? InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(Images.svgEyeIcon)),
                  )
                : null),
      ),
    );
  }
}
