class Covid19 {
  Total total;
  Today today;
  Overview overview;
  Locations locations;
  Covid19(this.total, this.today, this.overview, this.locations);
  factory Covid19.fromJson(Map<String, dynamic> map) {
    return Covid19(
      Total.fromJson(map['total']),
      Today.fromJson(map['today']),
      Overview(map['overview']),
      Locations(map['locations']),
    );
  }
}

class Model {
  int death, treating, cases, recovered;
  Model(this.death, this.treating, this.cases, this.recovered);
  factory Model.fromJson(Map<String, dynamic> map) {
    return Model(map['death'], map['treating'], map['cases'], map['recovered']);
  }
}

class Total {
  Model internal;
  Model world;
  Total(this.internal, this.world);
  factory Total.fromJson(Map<String, dynamic> map) {
    return Total(Model.fromJson(map['internal']), Model.fromJson(map['world']));
  }
}

class Today {
  Model internal;
  Model world;
  Today(this.internal, this.world);
  factory Today.fromJson(Map<String, dynamic> map) {
    return Today(Model.fromJson(map['internal']), Model.fromJson(map['world']));
  }
}

class Over {
  String date;
  int death,
      treating,
      cases,
      recovered,
      avgCases7day,
      avgRecovered7day,
      avgDeath7day;
  Over(
    this.date,
    this.death,
    this.treating,
    this.cases,
    this.recovered,
    this.avgCases7day,
    this.avgRecovered7day,
    this.avgDeath7day,
  );
  factory Over.fromJson(Map<String, dynamic> map) {
    return Over(
      map['date'],
      map['death'],
      map['treating'],
      map['cases'],
      map['recovered'],
      map['avgCases7day'],
      map['avgRecovered7day'],
      map['avgDeath7day'],
    );
  }
}

class Overview {
  List<Over> overlist = [];
  Overview(List<dynamic> list) {
    for (var item in list) {
      overlist.add(Over.fromJson(item));
    }
  }
}

class Location {
  String name;
  int death, treating, cases, recovered, casesToday;
  Location(
    this.name,
    this.death,
    this.treating,
    this.cases,
    this.recovered,
    this.casesToday,
  );
  factory Location.fromJson(Map<String, dynamic> map) {
    return Location(
      map['name'],
      map['death'],
      map['treating'],
      map['cases'],
      map['recovered'],
      map['casesToday'],
    );
  }
}

class Locations {
  List<Location> locationlist = [];
  Locations(List<dynamic> list) {
    for (var item in list) {
      locationlist.add(Location.fromJson(item));
    }
  }
}
