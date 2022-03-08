class CovidStateData {
  int date;
  String state;
  int positive;
  int negative;
  int death;
  int totalTestResultsIncrease;
  int hospitalized;
  String dateChecked;
  int totalTestsViral;
  int deathConfirmed;
  int positiveIncrease;
  int negativeIncrease;
  int deathIncrease;
  int hospitalizedIncrease;

  CovidStateData({
    this.date,
    this.state,
    this.positive,
    this.negative,
    this.death,
    this.hospitalized,
    this.dateChecked,
    this.deathConfirmed,
    this.positiveIncrease,
    this.negativeIncrease,
    this.totalTestResultsIncrease,
    this.deathIncrease,
    this.hospitalizedIncrease,
  });

  CovidStateData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    state = json['state'];
    positive = json['positive'];
    negative = json['negative'];
    death = json['death'];
    hospitalized = json['hospitalized'];
    dateChecked = json['dateChecked'];
    totalTestsViral = json['totalTestsViral'];
    deathConfirmed = json['deathConfirmed'];
    positiveIncrease = json['positiveIncrease'];
    negativeIncrease = json['negativeIncrease'];
    totalTestResultsIncrease = json['totalTestResultsIncrease'];
    deathIncrease = json['deathIncrease'];
    hospitalizedIncrease = json['hospitalizedIncrease'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['state'] = this.state;
    data['positive'] = this.positive;
    data['negative'] = this.negative;
    data['death'] = this.death;
    data['hospitalized'] = this.hospitalized;
    data['dateChecked'] = this.dateChecked;
    data['totalTestsViral'] = this.totalTestsViral;
    data['deathConfirmed'] = this.deathConfirmed;
    data['positiveIncrease'] = this.positiveIncrease;
    data['negativeIncrease'] = this.negativeIncrease;
    data['totalTestResultsIncrease'] = this.totalTestResultsIncrease;
    data['deathIncrease'] = this.deathIncrease;
    data['hospitalizedIncrease'] = this.hospitalizedIncrease;
    return data;
  }
}
