import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:screen_lock/app/routes/app_pages.dart';

class NextView extends GetView {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color(0xfff72585),
      Color(0xFFFFEE00),
      Color(0xFF07FA3B),
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
      backgroundColor: Color(0xff240046),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Colorful Texts",
                style: TextStyle(
                  letterSpacing: 6,
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Text(
                "--------------------------------------------------------------------------------------------------------------------",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "--------------------------------------------------------------------------------------------------------------------",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  for (int i = 0; i < 50; i++)
                    AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'A B C',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'D E F',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'G H I',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(50),
                        primary: Color(0xff8338ec),
                        animationDuration: Duration(
                          seconds: 4,
                        ),
                        side: BorderSide(
                          color: Colors.amber,
                          width: 5,
                        ),
                        shape: CircleBorder(),
                        elevation: 20,
                      ),
                      onPressed: () {
                        Get.offAllNamed(Routes.HOME);
                      },
                      child: Text("Go to Home"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
