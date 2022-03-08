import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/screens/infopages/page/page.dart';

import 'ques.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: PageView(
            children: [
              PageContainerTips(
                title: "Symptoms",
                description: "Track your symptoms of COVID-19 and get tested.",
                image: "assets/symptoms.jpg",
              ),
              PageContainerTips(
                title: "Precautions",
                description: "Help prevent the spread of COVID-19",
                image: "assets/precautions.jpg",
              ),
              PageContainerTips(
                title: "If infected",
                description: "Quarantine for 14 days and eat healthy",
                image: "assets/instruction.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
