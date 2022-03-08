import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/domain/entities/covidstatedata.dart';
import 'package:heka_app/network/client.dart';

class TestDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestDashboardState();
  }
}

class TestDashboardState extends State<TestDashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: Client().getDataPerState("fl"),
            builder: (context, AsyncSnapshot<CovidStateData> snapshot) {
              if (snapshot.data != null) {
                var deathNumbers = snapshot.data.death;
                var pos = snapshot.data.positive;
                return Center(
                  child: Container(
                    child: Column(
                      children: [Text("$deathNumbers $pos")],
                    ),
                  ),
                );
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
