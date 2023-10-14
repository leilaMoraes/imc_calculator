import 'package:imc_calculator_dart/classes/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person class tests', () {
    test('Person instance creation test', () {
      final person = Person('Leila', 63.0, 1.61);
      expect(person.getName(), 'Leila');
      expect(person.getWeight(), 63.0);
      expect(person.getHeight(), 1.61);
    });

    test('Invalid weight', () {
      final person = Person('Bruno', 0, 1.57);
      expect(() => person.calculateIMC(), throwsException);
    });

    test('Invalid height', () {
      final person = Person('Alice', 5.0, 0.37);
      expect(() => person.calculateIMC(), throwsException);
    });

    test('calculateIMC test', () {
      final person = Person('Leila', 63.0, 1.61);
      final imc = person.calculateIMC();

      expect(imc, 24.3);
    });
  });
}
