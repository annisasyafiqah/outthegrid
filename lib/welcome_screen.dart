import 'package:NewsApp/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'common_widgets/app_button.dart';
import 'common_widgets/app_text.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "Logo/MainLogo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imagePath), fit: BoxFit.none),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(),
                SizedBox(
                  height: 50,
                ),
                welcomeTextWidget(),
                SizedBox(
                  height: 10,
                ),
                sloganText(),
                SizedBox(
                  height: 40,
                ),
                getButton(context),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }

  Widget welcomeTextWidget() {
    return Column(
      children: [
        AppText(
          text: "Welcome",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 0, 33, 64),
        ),
        AppText(
          text: "to News App",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 0, 33, 64),
        ),
      ],
    );
  }

  Widget sloganText() {
    return AppText(
      text: "learn and get to know out side",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 0, 33, 64),
    );
  }

  Widget getButton(BuildContext context) {
    return AppButton(
      label: "Get Started",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
      onPressed: () {
        onGetStartedClicked(context);
      },
    );
  }

  void onGetStartedClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return LoginPage();
      },
    ));
  }
}
