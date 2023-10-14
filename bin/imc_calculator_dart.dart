import 'dart:io';
import 'package:imc_calculator_dart/classes/person.dart';

void main() {
  try {
    print('Calculadora IMC.');
    stdout.write("Informe seu nome: ");
    var name = stdin.readLineSync();

    if (name == null || name.isEmpty) {
      print('Nome não pode ser vazio. Programa encerrado.');
    } else {
      stdout.write("Informe seu peso (em kg): ");
      var weight = double.parse(stdin.readLineSync()!);

      stdout.write("Informe sua altura (ex: 1.60): ");
      var height = double.parse(stdin.readLineSync()!);

      var person = Person(name, weight, height);

      double imc = person.calculateIMC();

      print("\nResultado do IMC para ${person.getName()}: $imc");

      if (imc < 16) {
        print('Magreza grave');
      } else if (imc < 17) {
        print('Magreza moderada');
      } else if (imc < 18.5) {
        print('Magreza leve');
      } else if (imc < 25) {
        print('Saudável');
      } else if (imc < 30) {
        print('Sobrepeso');
      } else if (imc < 35) {
        print('Obesidade Grau I');
      } else if (imc < 40) {
        print('Obesidade Grau II (severa)');
      } else {
        print('Obesidade Grau III (mórbida)');
      }
    }
  } catch (e) {
    print("Erro: $e");
  }
}
