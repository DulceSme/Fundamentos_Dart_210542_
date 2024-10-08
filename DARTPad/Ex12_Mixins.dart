

abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar() =>print('Estoy volando!');
  void planear(int distanciaMaxima) =>print('Este animal puede planear hasta:  ${distanciaMaxima}');
  void ascender(double alturaMaxima) =>print('Este animal puede ascender hasta una altura de  ${alturaMaxima} mts. sobre el nivel del mar');
  void descender(String velocidadMax) =>print('Este animal puede dscender hasta una velocidad de hasta ${velocidadMax}');
}

mixin Caminante{
  void caminar() =>print('Estoy caminando!');
  void correr(double distanciaMaxima) =>print('Este animal puede correr hasta:  ${distanciaMaxima} mts');
  void saltar(bool alturaMaxima) =>print('Este animal puede saltar ${alturaMaxima}');
  void trotar(bool velocidadMax) =>print('Este animal puede trotar ${velocidadMax}');
}

mixin Nadador{
  void nadar() =>print('Estoy nadando!');
   void sumergir(double distanciaMaxima) =>print('Este animal puede sumergirse hasta:  ${distanciaMaxima}');
  void respirar(bool respiracionMax) =>print('Este animal sale respirar ${respiracionMax}');
  
  
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Caminante,Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador,Nadador{}

class TiburonBallena extends Pez with Nadador{}
class PalomaRosada extends Ave with Volador, Caminante{}

void main() {
  final flipper = Delfin();
  print("Instanciando la clase delfin, y accediendo a sus funciones.");
  flipper.nadar();

  print("--------------------------------------------------------------");
  print("Instanciando la clase Murcielago y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("--------------------------------------------------------------");
  print("Instanciando la clase Pato y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.volar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5 km/h");
  pekines.caminar();
  pekines.nadar();

  print("--------------------------------------------------------------");
  print("Instanciando la clase Tiburon Ballena y accediendo a sus funciones.");
  final tiburonBallena = TiburonBallena();
  tiburonBallena.nadar();
  tiburonBallena.sumergir(2000);
  tiburonBallena.respirar(true);

  print("--------------------------------------------------------------");
  print("Instanciando la clase Paloma Rosada y accediendo a sus funciones.");
  final palomaRosada = PalomaRosada();
  palomaRosada.volar();
  palomaRosada.planear(100);
  palomaRosada.ascender(20);
  palomaRosada.descender("3 km/h");
  palomaRosada.caminar();
  palomaRosada.correr(30);
  palomaRosada.saltar(false);
  palomaRosada.trotar(false);

  
  
}