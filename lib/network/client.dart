import 'dart:convert';

import 'package:heka_app/domain/entities/covidstatedata.dart';
import 'package:http/http.dart' as http;

class Client {
  String base_url = "https://api.covidtracking.com/v1/states/";
  var client = http.Client();

  Future<CovidStateData> getDataPerState(String state) async {
    CovidStateData covidStateData;
    try {
      base_url += "$state/current.json";
      var res = await client.get(base_url);
      var data = json.decode(res.body);
      covidStateData = CovidStateData.fromJson(data);
    } catch (e) {
      print(e);
    }
    return covidStateData;
  }

  Future<CovidStateData> getWeeklyData(String state) async {
    var url = base_url + "${state}/daily.json";
  }
}
