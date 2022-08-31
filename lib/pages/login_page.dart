import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_app/constants/Strings.dart';
import 'package:splash_app/constants/app_text_theme.dart';
import 'package:splash_app/constants/images.dart';
import 'package:splash_app/constants/theme.dart';
import 'package:splash_app/widgets/app_button.dart';
import 'package:splash_app/widgets/app_checkbox.dart';
import 'package:splash_app/widgets/app_textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: paper,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 17.5),
                Stack(
                  children: [
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 33.0),
                      child: Image.asset(Images.pngloginImg),
                    )),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 66.0, left: 16),
                        child: Text(
                          Strings.loginPageTitle,
                          textAlign: TextAlign.start,
                          style: AppTextTheme.loginTextStyle,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              color: paper,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 84),
                                  child: SvgPicture.asset(Images.svgLogo)),
                            ),
                          )),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [paper, olive]),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      AppTextFormField(
                          controller: emailControler,
                          labelText: Strings.userID),
                      const SizedBox(height: 27),
                      AppTextFormField(
                          controller: passwordController,
                          labelText: Strings.password,
                          isfieldTypePassword: true),
                      const SizedBox(height: 13),
                      const AppCheckBox(),
                      const SizedBox(height: 24),
                      const AppButton(),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(Strings.forgotPassword,
                                style: AppTextTheme.forgetPassowrd,
                                textAlign: TextAlign.center),
                          )),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
