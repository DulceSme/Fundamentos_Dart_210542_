void main() {
//La declaracion de una list extra limitada por corchetes (Brackets) y cada elemento de ser
 //individual y puede repetirse
  
  final numeros =[1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10];
  print("Ejemplo de LIST: $numeros");
  print("confirmamos el tipo para numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como: ");
print("El tamaño: ${numeros.length}");

  print("Para acceder a los elememtos debemos especificar la posicion entre []");
  print("""Para acceder a los elememtos en la primera posicion es : ${numeros[0]}
  El Elemento en la segunda posicion es: ${numeros[1]}, siempre respetando la posiscion -1
  El ultimo elemento de la lista seria: ${numeros[numeros.length - 1]}
  -------------------------------------------------------------------------------------------------------------
  De igual manera existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  ------------------------------------------------------------------------------------------------------------------
  
  Tambien tendremos acceso a algunos metodos que permiten la transformacion o filtrado del contenido
  Por ejemplo usar reserved, para intervenir el orden original: ${numeros.reversed}
  Es importante observar que la funcion reserved ha transformado la LIST original y la retorna como ITERABLE""");


  final numerosAlreves = numeros.reversed;
  print("Los iterables son estruturas de datos que DART y otros lenguajes para optimizar en termino de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un ITERABLE: $numerosAlreves");
  print("Confirmamos el tipo de datos para NUMEROSALREVES que es :${numerosAlreves.runtimeType}");

  print("De igual manera podemos transformar una LISTA en ITERABLE y viceversa");
  print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType}");


  //Conjuntos de datos (SET)
  //Un set es una estructura de datosmutilizada por DART, que simplifica los elementos eliminando los duplicados
  
  print("""Veamos que pasa con los conjuntos (SET)
  Convertimos el ITERABLE en un SET utilizando .toSet: ${numerosAlreves.toSet()}
  Podemos visualizar en el resultado que el SET eliminado los duplicamos y ahora delimita datosusando{} """);


// de igual manera podemos utilizar operaciones para el filtro de elementos usando.where()
  final numerosMayoresA5  =numeros.where((int num){
    return num > 5;
  });

  print("""Hemos filtrado sobre LIST solo los elementos mayores a 5: 
  Resultado del filtro: ${numerosMayoresA5} """);
  print("Eliminamos Duplicados... ${numerosMayoresA5.toSet()}");


}
