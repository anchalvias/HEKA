import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/screens/infopages/page/page.dart';

class InfoPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: PageView(
            children: [
              PageContainer(
                title: "Instant Updates",
                description:
                    "with heka you can see instant live updates of covid-19 cases",
                image: "assets/page1.png",
              ),
              PageContainer(
                title: "Get Resources",
                description:
                    "Avaiable resources such as near testing site and mental health support centers",
                image: "assets/page2.png",
              ),
              PageContainer(
                title: "Keep Updated",
                description:
                    "Keep updated with the most recent information about COVID-19",
                image: "assets/page3.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
