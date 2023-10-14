import 'dart:collection';

class Person {
  String _name = "";
  double _weight = 0;
  double _height = 0;

  Person(String name, double weight, double height) {
    _name = name;
    _weight = weight;
    _height = height;
  }

  void setName(String name) {
    _name = name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  String getName() {
    return _name;
  }

  double getWeight() {
    return _weight;
  }

  double getHeight() {
    return _height;
  }

  double calculateIMC() {
    if (_height <= 0.45) {
      throw Exception("Altura inválida. Deve ser maior do que 45 cm.");
    }
    double imc = _weight / (_height * _height);
    return double.parse(imc.toStringAsFixed(1));
  }
}
