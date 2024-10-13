void main() async {
  
  print('Inicio del programa');
  
  try {
    // Llamada a la función asíncrona httpGet() y espera su resultado
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('éxito: $value');  // Imprime el valor retornado por httpGet() si no hay error
    
  } on Exception catch(err) {
    // Captura específicamente excepciones de tipo Exception y las maneja
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Captura cualquier otro tipo de error no específico
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Este bloque se ejecuta siempre, independientemente de si hay o no un error
    print('Fin del try y catch');
  }
  
  print('Fin del programa');
}

// Función asíncrona que simula una solicitud HTTP
Future<String> httpGet(String url) async {
  
  // Simula un retraso de 1 segundo para emular el tiempo de respuesta de una petición HTTP
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanza una excepción de tipo Exception con un mensaje personalizado
  throw Exception('No hay parámetros en el URL');
  
  // Código comentado que podría lanzar otro tipo de error o retornar un valor en caso de éxito
  // throw 'Error en la petición';
  // return 'Tenemos un valor de la petición';
}
