class WeeklyData {
  int date;
  String state;
  int positive;
  Null probableCases;
  int negative;
  Null pending;
  String totalTestResultsSource;
  int totalTestResults;
  int hospitalizedCurrently;
  Null hospitalizedCumulative;
  int inIcuCurrently;
  Null inIcuCumulative;
  Null onVentilatorCurrently;
  Null onVentilatorCumulative;
  Null recovered;
  String dataQualityGrade;
  String lastUpdateEt;
  String dateModified;
  String checkTimeEt;
  int death;
  Null hospitalized;
  String dateChecked;
  int totalTestsViral;
  Null positiveTestsViral;
  Null negativeTestsViral;
  int positiveCasesViral;
  Null deathConfirmed;
  Null deathProbable;
  Null totalTestEncountersViral;
  Null totalTestsPeopleViral;
  Null totalTestsAntibody;
  Null positiveTestsAntibody;
  Null negativeTestsAntibody;
  Null totalTestsPeopleAntibody;
  Null positiveTestsPeopleAntibody;
  Null negativeTestsPeopleAntibody;
  Null totalTestsPeopleAntigen;
  Null positiveTestsPeopleAntigen;
  Null totalTestsAntigen;
  Null positiveTestsAntigen;
  String fips;
  int positiveIncrease;
  int negativeIncrease;
  int total;
  int totalTestResultsIncrease;
  int posNeg;
  int deathIncrease;
  int hospitalizedIncrease;
  String hash;
  int commercialScore;
  int negativeRegularScore;
  int negativeScore;
  int positiveScore;
  int score;
  String grade;

  WeeklyData(
      {this.date,
      this.state,
      this.positive,
      this.probableCases,
      this.negative,
      this.pending,
      this.totalTestResultsSource,
      this.totalTestResults,
      this.hospitalizedCurrently,
      this.hospitalizedCumulative,
      this.inIcuCurrently,
      this.inIcuCumulative,
      this.onVentilatorCurrently,
      this.onVentilatorCumulative,
      this.recovered,
      this.dataQualityGrade,
      this.lastUpdateEt,
      this.dateModified,
      this.checkTimeEt,
      this.death,
      this.hospitalized,
      this.dateChecked,
      this.totalTestsViral,
      this.positiveTestsViral,
      this.negativeTestsViral,
      this.positiveCasesViral,
      this.deathConfirmed,
      this.deathProbable,
      this.totalTestEncountersViral,
      this.totalTestsPeopleViral,
      this.totalTestsAntibody,
      this.positiveTestsAntibody,
      this.negativeTestsAntibody,
      this.totalTestsPeopleAntibody,
      this.positiveTestsPeopleAntibody,
      this.negativeTestsPeopleAntibody,
      this.totalTestsPeopleAntigen,
      this.positiveTestsPeopleAntigen,
      this.totalTestsAntigen,
      this.positiveTestsAntigen,
      this.fips,
      this.positiveIncrease,
      this.negativeIncrease,
      this.total,
      this.totalTestResultsIncrease,
      this.posNeg,
      this.deathIncrease,
      this.hospitalizedIncrease,
      this.hash,
      this.commercialScore,
      this.negativeRegularScore,
      this.negativeScore,
      this.positiveScore,
      this.score,
      this.grade});

  WeeklyData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    state = json['state'];
    positive = json['positive'];
    probableCases = json['probableCases'];
    negative = json['negative'];
    pending = json['pending'];
    totalTestResultsSource = json['totalTestResultsSource'];
    totalTestResults = json['totalTestResults'];
    hospitalizedCurrently = json['hospitalizedCurrently'];
    hospitalizedCumulative = json['hospitalizedCumulative'];
    inIcuCurrently = json['inIcuCurrently'];
    inIcuCumulative = json['inIcuCumulative'];
    onVentilatorCurrently = json['onVentilatorCurrently'];
    onVentilatorCumulative = json['onVentilatorCumulative'];
    recovered = json['recovered'];
    dataQualityGrade = json['dataQualityGrade'];
    lastUpdateEt = json['lastUpdateEt'];
    dateModified = json['dateModified'];
    checkTimeEt = json['checkTimeEt'];
    death = json['death'];
    hospitalized = json['hospitalized'];
    dateChecked = json['dateChecked'];
    totalTestsViral = json['totalTestsViral'];
    positiveTestsViral = json['positiveTestsViral'];
    negativeTestsViral = json['negativeTestsViral'];
    positiveCasesViral = json['positiveCasesViral'];
    deathConfirmed = json['deathConfirmed'];
    deathProbable = json['deathProbable'];
    totalTestEncountersViral = json['totalTestEncountersViral'];
    totalTestsPeopleViral = json['totalTestsPeopleViral'];
    totalTestsAntibody = json['totalTestsAntibody'];
    positiveTestsAntibody = json['positiveTestsAntibody'];
    negativeTestsAntibody = json['negativeTestsAntibody'];
    totalTestsPeopleAntibody = json['totalTestsPeopleAntibody'];
    positiveTestsPeopleAntibody = json['positiveTestsPeopleAntibody'];
    negativeTestsPeopleAntibody = json['negativeTestsPeopleAntibody'];
    totalTestsPeopleAntigen = json['totalTestsPeopleAntigen'];
    positiveTestsPeopleAntigen = json['positiveTestsPeopleAntigen'];
    totalTestsAntigen = json['totalTestsAntigen'];
    positiveTestsAntigen = json['positiveTestsAntigen'];
    fips = json['fips'];
    positiveIncrease = json['positiveIncrease'];
    negativeIncrease = json['negativeIncrease'];
    total = json['total'];
    totalTestResultsIncrease = json['totalTestResultsIncrease'];
    posNeg = json['posNeg'];
    deathIncrease = json['deathIncrease'];
    hospitalizedIncrease = json['hospitalizedIncrease'];
    hash = json['hash'];
    commercialScore = json['commercialScore'];
    negativeRegularScore = json['negativeRegularScore'];
    negativeScore = json['negativeScore'];
    positiveScore = json['positiveScore'];
    score = json['score'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['state'] = this.state;
    data['positive'] = this.positive;
    data['probableCases'] = this.probableCases;
    data['negative'] = this.negative;
    data['pending'] = this.pending;
    data['totalTestResultsSource'] = this.totalTestResultsSource;
    data['totalTestResults'] = this.totalTestResults;
    data['hospitalizedCurrently'] = this.hospitalizedCurrently;
    data['hospitalizedCumulative'] = this.hospitalizedCumulative;
    data['inIcuCurrently'] = this.inIcuCurrently;
    data['inIcuCumulative'] = this.inIcuCumulative;
    data['onVentilatorCurrently'] = this.onVentilatorCurrently;
    data['onVentilatorCumulative'] = this.onVentilatorCumulative;
    data['recovered'] = this.recovered;
    data['dataQualityGrade'] = this.dataQualityGrade;
    data['lastUpdateEt'] = this.lastUpdateEt;
    data['dateModified'] = this.dateModified;
    data['checkTimeEt'] = this.checkTimeEt;
    data['death'] = this.death;
    data['hospitalized'] = this.hospitalized;
    data['dateChecked'] = this.dateChecked;
    data['totalTestsViral'] = this.totalTestsViral;
    data['positiveTestsViral'] = this.positiveTestsViral;
    data['negativeTestsViral'] = this.negativeTestsViral;
    data['positiveCasesViral'] = this.positiveCasesViral;
    data['deathConfirmed'] = this.deathConfirmed;
    data['deathProbable'] = this.deathProbable;
    data['totalTestEncountersViral'] = this.totalTestEncountersViral;
    data['totalTestsPeopleViral'] = this.totalTestsPeopleViral;
    data['totalTestsAntibody'] = this.totalTestsAntibody;
    data['positiveTestsAntibody'] = this.positiveTestsAntibody;
    data['negativeTestsAntibody'] = this.negativeTestsAntibody;
    data['totalTestsPeopleAntibody'] = this.totalTestsPeopleAntibody;
    data['positiveTestsPeopleAntibody'] = this.positiveTestsPeopleAntibody;
    data['negativeTestsPeopleAntibody'] = this.negativeTestsPeopleAntibody;
    data['totalTestsPeopleAntigen'] = this.totalTestsPeopleAntigen;
    data['positiveTestsPeopleAntigen'] = this.positiveTestsPeopleAntigen;
    data['totalTestsAntigen'] = this.totalTestsAntigen;
    data['positiveTestsAntigen'] = this.positiveTestsAntigen;
    data['fips'] = this.fips;
    data['positiveIncrease'] = this.positiveIncrease;
    data['negativeIncrease'] = this.negativeIncrease;
    data['total'] = this.total;
    data['totalTestResultsIncrease'] = this.totalTestResultsIncrease;
    data['posNeg'] = this.posNeg;
    data['deathIncrease'] = this.deathIncrease;
    data['hospitalizedIncrease'] = this.hospitalizedIncrease;
    data['hash'] = this.hash;
    data['commercialScore'] = this.commercialScore;
    data['negativeRegularScore'] = this.negativeRegularScore;
    data['negativeScore'] = this.negativeScore;
    data['positiveScore'] = this.positiveScore;
    data['score'] = this.score;
    data['grade'] = this.grade;
    return data;
  }
}
