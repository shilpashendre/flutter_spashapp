import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_app/constants/images.dart';
import 'package:splash_app/constants/theme.dart';
import 'package:splash_app/pages/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenPageState();
  }
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [paper, olive])),
      child: Column(
        children: [
          const SizedBox(height: 62),
          Align(
              alignment: Alignment.center,
              child: Container(
                  color: paper,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: SvgPicture.asset(Images.svgLogo),
                  ))),
          const SizedBox(height: 100),
          Center(
            child: Stack(children: [
              SizedBox(height: MediaQuery.of(context).size.width),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 170.0),
                    child: SvgPicture.asset(Images.svgChat),
                  )),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SvgPicture.asset(Images.svgLeaf)),
              ),
              Positioned(
                  top: 170, child: SvgPicture.asset(Images.svgMedicalBox)),
              Positioned(
                  top: 250,
                  child: Container(
                      color: Colors.white,
                      child: SvgPicture.asset(Images.svgMedicine))),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 108.0),
                      child: SvgPicture.asset(Images.svgPills),
                    )),
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: SvgPicture.asset(Images.svgTube),
                    )),
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: SvgPicture.asset(Images.svgSyrup),
                    )),
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: SvgPicture.asset(Images.svgMedicalInstruments),
                    )),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250.0),
                    child: SvgPicture.asset(Images.svgNotes),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Center(child: SvgPicture.asset(Images.svgMobile)),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
