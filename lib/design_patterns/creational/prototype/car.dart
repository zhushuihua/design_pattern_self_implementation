import 'package:design_pattern_self_implementation/design_patterns/creational/prototype/engine.dart';

class Car {
  final String _make;
  final String _model;
  final Engine _engine;
  final int year;
  const Car(this._make, this._model, this._engine, this.year);
  Car clone() {
    return Car(_make, _model, _engine, year);
  }

  Car deepClone() {
    return Car(_make, _model, _engine.copyWith(), year);
  }

  @override
  String toString() {
    return 'Car: make:$_make model:$_model in $year Engine:$_engine';
  }
}
