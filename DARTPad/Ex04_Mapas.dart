void main() {
  final pokemon = {
    'Name': 'Pikachu',
    'HP': 100,
    'isAlive': true,
    'abilities': ['Impact Trueno', 'Cola de Hierro', 'Rapido'],
    'sprites': {
      1: "pikachu/front.png",
      2: "pikachu/back.png",
    }
  };

  final Map<String, dynamic> trainer = {
    'Name': 'Ash Ketchup',
    'Gender': 'Male',
    'Age': 12,
    'isGymnasiumLeader': false
  };

  final pokemons = {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot"
  };

  print("""  Los datos del Pokemon son usando el Mapa :
  -----------------------------------------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
   """);

  print("************************************");

  print("""  Accediendo a las propiedades del pokemon usando los braquets/Corchetes [] :
  -----------------------------------------------------------------
    Nombre = ${pokemon['Name']}
    HP = ${pokemon['HP']}
    Vivo = ${pokemon['isAlive']}
    """);
  
  
  final tmp_sprites = pokemon['sprites'] as Map<int, String>;
  
   print("""  Accediendo a las propiedades del pokemon usando los braquets/Corchetes [] :
  -----------------------------------------------------------------
    Nombre = ${pokemon['Name']}
    HP = ${pokemon['HP']}
    Vivo = ${pokemon['isAlive']}
    sprites = ${pokemon['sprites']}
    -----------------------------------------------------------------
    
    Back = ${tmp_sprites[2]}
    Front = ${tmp_sprites[1]}
    """);
  
}