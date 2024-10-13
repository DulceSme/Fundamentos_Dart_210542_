void main() {
  
  emitNumber()
     .listen((int value) {
       print('Stream value: $value'); // Imprime cada valor emitido por el Stream
     }); 
}

Stream<int> emitNumber() async* {
  
  final valuesToEmit = [1, 2, 3, 4, 5]; // Lista de valores que se emitirán
  
  // Itera sobre cada valor en la lista
  for (int i in valuesToEmit) {
    // Espera un segundo antes de emitir el siguiente valor
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Emite el valor actual del Stream
  }
}
