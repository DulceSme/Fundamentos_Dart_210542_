void main() {
  
  emitNumbers().listen((value) {
    print('Stream value: $value'); // Imprime cada valor emitido por el Stream
  });
}

Stream<int> emitNumbers() {
  
  // Retorna un Stream que emite un valor entero cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // Retorna el valor actual en cada emisión
    return value;
  }).take(5); // Limita el Stream a emitir solo 5 valores
}
