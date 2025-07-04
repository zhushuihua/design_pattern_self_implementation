class House {
  final int walls;
  final int windows;
  final String roofType;
  final int levels;
  final int doors;
  final bool hasGarage;
  House(
    this.walls,
    this.windows,
    this.roofType,
    this.doors,
    this.hasGarage,
    this.levels,
  );
  @override
  String toString() {
    final houseWithoutGarage =
        'House with $levels levels, $windows windows and $doors, the roof is $roofType';
    return houseWithoutGarage + (hasGarage ? ' with a garage' : '');
  }
}

abstract class HouseBuilder {
  int _walls = 0;
  int _windows = 0;
  int _levels = 1;
  String _roofType = '';
  int _doors = 0;
  bool _hasGarage = false;
  void buildWalls();
  void buildWindows();
  void buildDoors();
  void buildLevels();
  void buildRoof(String roofType) {
    _roofType = roofType;
  }

  void buildGarage(bool hasGarage) {
    _hasGarage = hasGarage;
  }

  House build();
}

class FarmhouseBuilder extends HouseBuilder {
  @override
  void buildDoors() {
    _doors = 2;
  }

  @override
  void buildLevels() {
    _levels = 3;
  }

  @override
  void buildWalls() {
    _walls = 20;
  }

  @override
  void buildWindows() {
    _windows = 12;
  }

  House build() {
    buildWalls();
    buildDoors();
    buildWindows();
    buildLevels();
    buildRoof('Tile roof');
    return House(_walls, _windows, _roofType, _doors, _hasGarage, _levels);
  }
}

void main() {
  HouseBuilder builder = FarmhouseBuilder();
  final house = builder.build();
  print(house);
}
