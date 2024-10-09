void main() {
  // CASO DE PRUEBA 1 --  NUEVO MIEMBRO QUE SE REGISTRA HOY
  final miembro1 = Miembro(
    ID: 101,
    cortesyTitle: "Sr.",
    name: "Carlos",
    firstLastname: "Garrido",
    secondLastname: "Martínez",
    gender: "Hombre",
    membershipType: "Premium",
    startDate: DateTime.now(), // Registrado hoy
    usuarioID: 1,
    estatus: "Activo", 
  );
  print(miembro1);

  // CASO DE PRUEBA 2 -- MIEMBRO QUE FUE TRABAJADOR DEL GIMNASIO
  final miembro2 = Miembro(
    ID: 102,
    cortesyTitle: "Sra.",
    name: "Ana",
    firstLastname: "López",
    secondLastname: "Ramírez",
    gender: "Mujer",
    membershipType: "Básica",
    startDate: DateTime(2022, 05, 10), // Registrada anteriormente
    usuarioID: 2,
    estatus: "Activo", // Cambiado a "Activo"
  );
  print(miembro2);

  // CASO DE PRUEBA 3 -- CANCELANDO LA MEMBRESÍA DE UN MIEMBRO
  print("Cancelando la membresía del miembro 1:");
  miembro1.cancelaSuscripcion();
  print(miembro1);
}

// Definición de la Clase Abstracta <Persona>
abstract class Persona {
  int ID;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;

  Persona({
    required this.ID,
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
  });

  // Definición de la Función de la Clase
  void cancelaSuscripcion();
}

// Declaración de la Clase <Miembro> que extiende de <Persona>
class Miembro extends Persona {
  String? cortesyTitle;
  String membershipType;
  DateTime startDate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;
  int usuarioID; 
  String estatus; 
  int antiguedad; // Antigüedad en meses

  // Sobreescritura de las Propiedades de la Clase Abstracta <Persona>
  Miembro({
    required int ID,
    this.cortesyTitle,
    required String name,
    required String firstLastname,
    String? secondLastname,
    required String gender,
    required this.membershipType,
    required this.startDate,
    this.isActive = true,
    DateTime? createdAt,
    DateTime? updatedAt,
    required this.usuarioID,
    this.estatus = "Activo",
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt,
        antiguedad = DateTime.now().difference(startDate).inDays ~/ 30, // Calcula antigüedad en meses
        super(
          ID: ID,
          name: name,
          firstLastname: firstLastname,
          secondLastname: secondLastname,
          gender: gender,
        );

  // Métodos CRUD

  // Crear: Ya se maneja mediante el constructor de la clase
  // Leer: Muestra la información del miembro
  void leer() {
    print(this);
  }

  // Actualizar: Modifica el tipo de membresía
  void actualizar(String nuevaMembresia) {
    membershipType = nuevaMembresia;
    updatedAt = DateTime.now();
    print("Membresía actualizada a: $membershipType");
  }

  // Eliminar: Cambia el estado a inactivo 
  void eliminar() {
    isActive = false;
    updatedAt = DateTime.now();
    print("Miembro eliminado: $name $firstLastname.");
  }

  // Sobreescritura de la Función cancelaSuscripcion()
  @override
  void cancelaSuscripcion() {
    isActive = false;
    updatedAt = DateTime.now();
    estatus = "Inactivo"; // Cambia el estatus a inactivo
    print("La suscripción ha sido cancelada para $name $firstLastname.");
  }

  @override
  String toString() {
    final String formattedStartDate =
        "${startDate.day.toString().padLeft(2, '0')}/" +
            "${startDate.month.toString().padLeft(2, '0')}/${startDate.year}";

    final String formattedCreatedDate =
        "${createdAt.day.toString().padLeft(2, '0')}/" +
            "${createdAt.month.toString().padLeft(2, '0')}/${createdAt.year} " +
            "${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}";

    return """
    --------------------------------------------------------
    DATOS DEL MIEMBRO
    --------------------------------------------------------
    ID: $ID
    Nombre: ${cortesyTitle ?? ''} $name $firstLastname ${secondLastname ?? ''}
    Género: $gender
    Tipo de membresía: $membershipType
    Fecha de inicio: $formattedStartDate
    Estatus: $estatus
    Antigüedad: $antiguedad meses
    Fecha de registro: $formattedCreatedDate
    --------------------------------------------------------
    """;
  }
}
