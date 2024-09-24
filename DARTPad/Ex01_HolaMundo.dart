void main() {
  // Declarando una variable generica para almacenar mi nombre
  var myName = 'Dulce';
  String myLastName = 'Hernandez';
  final int myDNI = 210542;
  late final int myAge;
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad aun no la conozco porque no se cuando naciste');
// interpolando el valor de las variables con metodos de manipulacion o transformacion
    print('\nHola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aun no la conozco porque no se cuando naciste');
}
