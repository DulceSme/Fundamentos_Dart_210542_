void main(){
//Practica 05: Tipo de Dato Dinamico (Dynamic - Comodin)
  dynamic errorMessage;
  
  print(""" El Error inicial de errorMessage es : $errorMessage
  al ser dinamico permite la asignacion de valores nulos. """);
  
  errorMessage = "El usuario y la contraseña no coinciden";
  print("""------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage 
  Ahora le hemos asignado un valor de un String. """);
  
  errorMessage = 404;
  print("""------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage 
  En algunos sistemas los errores son controlados por un codigo numerico """);
  
  errorMessage = false;
  print("""------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage 
  Cuando el sistema funciona correctamente el mensaje de error puede ser FALSO """);
  
  errorMessage = [400,404,500,502,505];
  print("""------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage 
  En caso del que sistema detecte varios errores podria agrgarlos en una lista""");
  
  errorMessage = {125,"Usuario No Encontrado", true, -1025.16,'A'};
  print("""------------------------------------------------------------------
  El nuevo valor de errorMessage es $errorMessage 
  O incluso como un conjunto (SET) de datos. """);
  
  errorMessage = () => true;
  print("""------------------------------------------------------------------
  El ultimo cambio de errorMessage es $errorMessage 
  Que en este caso es el resultado de una funcion. """);
}
