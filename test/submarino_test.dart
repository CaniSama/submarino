import 'package:collection/collection.dart';
import 'package:submarino/coordenadas.dart';
import 'package:submarino/submarino.dart';
import 'dart:collection';
import 'package:test/test.dart';

void main() {
test('barco esta entero', () {
 Barco barco =Barco(longitudEslora: 3);
 expect(barco.estaIntacto, equals(true));

  
});
test('si barco de 5 debe mandar exepcion', () {
  expect(()=>Barco(longitudEslora: 5),throwsA(isA<EsloraIncorrectaDeBarco>()));
});


test('Si barco(3,horizontal ,a1 )entonces sus cordenadas son a1,b1,c1', () {
  Barco b = Barco(longitudEslora: 3, direccion: direccion.horizontal, coordenada:'A1');
  Set<Coordenada> coordenadasEsperadas = {Coordenada('A1'),Coordenada('B1'),Coordenada('C1')};
  Set<Coordenada> coordenadasReales = b.localizacion();
  bool todosIguales = DeepCollectionEquality.unordered().equals(coordenadasEsperadas, coordenadasReales);
  expect(todosIguales, equals(true));
});
}



class EsloraIncorrectaDeBarco implements Exception {}

Set eslorasCorrectas = {1,2,3,4};
enum direccion {vertical,horizontal}

class Barco {
  final bool _estaIntacto = true;
  late final int _eslora;
  bool get estaIntacto => _estaIntacto;
  int get eslora => _eslora;

  Barco({required int longitudEslora, direccion = direccion.horizontal, String coordenada = 'A1' }){
    if(!eslorasCorrectas.contains(longitudEslora)){
      throw EsloraIncorrectaDeBarco();
    }
   _eslora = longitudEslora;
  }
  Set<Coordenada> localizacion() {
    return{};
  }
  }
