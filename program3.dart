//Create a map that associates the names of countries with their population and
//area. Find the top 5 largest countries by population density (population / area).

import 'dart:io';

void main() {
  Map<String, Map<String, double>> countriesList = {
    "Pakistan": {"population": 123455, "area": 43535},
    "India": {"population": 2622882, "area": 25626},
    "China": {"population": 13345567887, "area": 242671},
    "America": {"population": 123651, "area": 3689645},
  };

  List<MapEntry<String, double>> populationDensity = countriesList.entries
      .map((entry) => MapEntry(
          entry.key, entry.value["population"]! / entry.value["area"]!))
      .toList();

  populationDensity.sort((a, b) => b.value.compareTo(a.value));

  print("Largest Countries By Population Density");

  populationDensity.take(5).forEach((entry) {
    print("${entry.key}):${entry.value.toStringAsFixed(3)}");
  });
}
