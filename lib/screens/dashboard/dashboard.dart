import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/domain/entities/covidstatedata.dart';
import 'package:heka_app/network/client.dart';

class Dashboard extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  TextEditingController TotalCases;
  TextEditingController ActiveCases;
  TextEditingController Recovered;
  TextEditingController Deaths;
  TextEditingController Stats;

  @override
  //void initState() {
  //  super.initState();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff1A6DFF),
                Color(0xff7209B7),
              ])),
          width: MediaQuery.of(context).size.width,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 130.0,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff300EB5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text('FLORIDA'),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(width: 5),
                  ButtonTheme(
                    minWidth: 130.0,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff520382),
                      child: Text('US'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      textColor: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff49BFF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      //child: Text('Total Cases'),
                      //textColor: Color(0xffffffff),
                      child: FutureBuilder(
                          future: Client().getDataPerState("fl"),
                          builder: (context,
                              AsyncSnapshot<CovidStateData> snapshot) {
                            if (snapshot.data != null &&
                                snapshot.data.death != null) {
                              var total = snapshot.data.positive +
                                  snapshot.data.negative;
                              return Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Total Cases \n \n $total",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              );
                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ),
                  SizedBox(width: 10),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffF2A55D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      //child: Text('Active Cases'),
                      //textColor: Color(0xffffffff),
                      child: FutureBuilder(
                          future: Client().getDataPerState("fl"),
                          builder: (context,
                              AsyncSnapshot<CovidStateData> snapshot) {
                            if (snapshot.data != null &&
                                snapshot.data.death != null) {
                              var active = snapshot.data.positive;
                              return Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Active Cases \n \n $active",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              );
                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff63C74A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      //child: Text('Recovered'),
                      //textColor: Color(0xffffffff),
                      child: FutureBuilder(
                          future: Client().getDataPerState("fl"),
                          builder: (context,
                              AsyncSnapshot<CovidStateData> snapshot) {
                            if (snapshot.data != null &&
                                snapshot.data.death != null) {
                              var recovered = snapshot.data.negative;
                              return Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Recovered \n \n $recovered",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              );
                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ),
                  SizedBox(width: 10),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 90,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffBE4040),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      //child: Text('Deaths'),
                      //textColor: Color(0xffffffff),

                      child: FutureBuilder(
                          future: Client().getDataPerState("fl"),
                          builder: (context,
                              AsyncSnapshot<CovidStateData> snapshot) {
                            if (snapshot.data != null &&
                                snapshot.data.death != null) {
                              var deathNumbers = snapshot.data.death;
                              //print(deathNumbers);
                              return Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Deaths \n \n $deathNumbers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              );
                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, "/signinpage"),
                      color: Color(0xff580E36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text('Get Resources',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      //textColor: Color(0xffffffff),
                    ),
                  ),
                  //SizedBox(width: 10),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 45,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/tips");
                  },
                  color: Color(0xff520382),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text('Tips',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  //textColor: Color(0xffffffff),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {});
                    },
                    //color: Color(0xff520382),
                    color: Colors.transparent,
                    child: Text('Daily'),
                    textColor: Color(0xffffffff),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {});
                    },
                    color: Colors.transparent,
                    child: Text('Weekly'),
                    textColor: Color(0xffffffff),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {});
                    },
                    color: Colors.transparent,
                    child: Text('Monthly'),
                    textColor: Color(0xffffffff),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: BarChart(randomData()),
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

  BarChartGroupData groupData(int x, double y,
      {Color barColor = Colors.white}) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
          y: y + 1,
          width: 15,
          backDrawRodData: BackgroundBarChartRodData(show: true, y: 20))
    ]);
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (index) {
        switch (index) {
          case 0:
            return groupData(0, 5);
          case 1:
            return groupData(1, 3);
          case 2:
            return groupData(2, 2);
          case 3:
            return groupData(3, 100);
          case 4:
            return groupData(4, 300);
          case 5:
            return groupData(5, 250);
          case 6:
            return groupData(6, 50);
            break;
          default:
            return null;
        }
      });

  BarChartData randomData() {
    return BarChartData(
        barTouchData: BarTouchData(
          enabled: false,
        ),
        titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (value) => const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                margin: 16,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return 'M';
                    case 1:
                      return 'T';
                    case 2:
                      return 'W';
                    case 3:
                      return 'T';
                    case 4:
                      return 'F';
                    case 5:
                      return 'S';
                    case 6:
                      return 'S';
                    default:
                      return '';
                  }
                }),
            leftTitles: SideTitles(
              showTitles: false,
            )),
        barGroups: List.generate(7, (index) {
          switch (index) {
            case 0:
              return groupData(0, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 1:
              return groupData(1, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 2:
              return groupData(2, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 3:
              return groupData(3, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 4:
              return groupData(4, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 5:
              return groupData(5, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            case 6:
              return groupData(6, Random().nextInt(15).toDouble() + 6,
                  barColor: widget.availableColors[
                      Random().nextInt(widget.availableColors.length)]);
            default:
              return null;
          }
        }));
  }
}
