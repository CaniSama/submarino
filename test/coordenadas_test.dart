
import 'package:submarino/coordenadas.dart';

import 'package:test/test.dart';

void main() {
  test('Se acepta si es en a1', () {
    expect(() => Coordenada('a1'), returnsNormally);

  });
  test('No se acepta si es en z9', () {
    expect(() => Coordenada('z9'), throwsA(isA <CoordenadaIncorrecta>()));

  });

  test('No se acepta si es en a15', () {
    expect(() => Coordenada('a15'), throwsA(isA<CoordenadaIncorrecta>()));
  });

  test('no se acpeta si es 5a', () {
    expect(() => Coordenada('5a'), throwsA(isA<CoordenadaIncorrecta>()));
  });

    test('no se acepta si es ""', () {
    expect(() => Coordenada(''), throwsA(isA<CoordenadaIncorrecta>()));
  });
    test('Si hago Coordenada(a5) espero que c.letra sea a y c.numero sea 5', () {
    Coordenada c = Coordenada('a5');
    expect(c.letra, equals('A'));
    expect(c.numero, equals(5));
  });

  test('Si hago una A5 y otra A5 deben ser iguales', () {
    Coordenada c1 = Coordenada('A5');
    Coordenada c2 = Coordenada('A5');
    expect(c1 == c2, equals(true));
   });
}



