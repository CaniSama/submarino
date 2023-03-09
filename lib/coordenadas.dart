class CoordenadaIncorrecta implements Exception {}

Set letrasIntervalo = {'A','B','C','D','G','H','I','j'};
final int LimiteMenorIntervalo = 1;
final int LimiteMayorIntervalo = 10;

class Coordenada{
  
  int get numero => _numero;
  String get letra => _letra;

  late final String _letra;
  late final int _numero;

  Coordenada(String valores){
    if(!(valores.length > 1)){
      throw CoordenadaIncorrecta();
    }
    String parteDeLaLetra = valores.toUpperCase().substring(0, 1);
    String parteDelNumero = valores.substring(1);

    int? numero = int.tryParse(parteDelNumero);

    if(numero == null){
      throw CoordenadaIncorrecta();
    }
    if(!letrasIntervalo.contains(parteDeLaLetra)){
      throw CoordenadaIncorrecta();
    }

   _numero = numero;
   _letra = parteDeLaLetra;

   if (!((numero >= LimiteMenorIntervalo) && (numero <= LimiteMayorIntervalo))) {
     throw CoordenadaIncorrecta();
   }
  }

  @override
  bool operator ==(covariant Coordenada other){
    if(identical(this, other)) return true;

    return
    other._letra == _letra &&
    other._numero == _numero;
  }
  @override
  int get hashCode => _letra.hashCode ^ _numero.hashCode;
}