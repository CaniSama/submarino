import 'package:submarino/submarino.dart';
import 'package:test/test.dart';

void main() {
test('barco esta entero', () {
 Barco barco =new Barco();
 expect(barco.estaIntacto, equals(true));

  
});
}

class Barco {
  bool _estaIntacto = true;
  bool get estaIntacto => _estaIntacto;
}
