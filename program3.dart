//Create a map that associates the names of countries with their population and
// area. Find the top 5 largest countries by population density (population / area).

void main() {
  Map<String, List<double>> countriesList = {
    "pakistan": [123455, 566888],
    "Iran": [243627, 78787],
    "China": [1526273838, 7868689],
    "America": [1325272, 2738392],
  };

  var populationDensity = countriesList.entries
      .map((e) => MapEntry(e.key, e.value[0] / e.value[1]))
      .toList;
}
