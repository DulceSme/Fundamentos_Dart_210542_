void main(){
// Practica 04 : Tipos de Datos en DART 
// Cadenas (String)
final String pokemon ="Pikachu";
//Enteros (Int)
final int hp=100;
//Boleano (Boolean)
final bool isAlive = true;
// Listas (list)
final abilities  = ['Impact-Trueno','Cola de Hierro','Ataque Rapido'];
final sprites  = <String> ['Pikachu_front.png','Pikachu_back.png'];

print(""" El Pokemon que elegiste es :" $pokemon
----------------------------
Las estadisticas de $pokemon son:
vida (HP): $hp
Estatus de vida: $isAlive
Habilidades: $abilities
Imagenes: $sprites
""");
}
