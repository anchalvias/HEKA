import 'package:flutter_test/flutter_test.dart';
import 'package:heka_app/domain/entities/covidstatedata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  test("Testing for network call", () async {
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

    var data = await getDataPerState("fl");
    print(data.death);
  });
}
