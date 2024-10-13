void main() async {
  
  print('Inicio del programa');
  
  try {
    // Llamada a la función asíncrona httpGet() y espera su resultado
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);  // Imprime el valor retornado por httpGet()
    
  } catch (err) {
    // Captura y maneja cualquier error que ocurra durante la ejecución de httpGet()
    print('Tenemos un error: $err');
  }
  
  print('Fin del programa');
}

// Función asíncrona que simula una solicitud HTTP
Future<String> httpGet(String url) async {
  
  // Simula un retraso de 1 segundo para emular el tiempo de respuesta de una petición HTTP
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanza una excepción para simular un error en la petición
  throw 'Error en la petición';
  
  // Código comentado que retornaría un valor en caso de que la petición fuera exitosa
  // return 'Tenemos un valor de la petición';
}
