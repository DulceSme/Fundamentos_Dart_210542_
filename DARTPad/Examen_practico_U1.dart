void main() {
  // CASO DE PRUEBA 1 -- NUEVO MIEMBRO QUE SE REGISTRA HOY
  final miembro1 = Miembro(
    ID: 101,
    tituloCortesia: "Sra.", // Título de cortesía
    nombre: "Dulce", // Nombre del miembro
    primerApellido: "Hernández", // Primer apellido del miembro
    segundoApellido: "Juarez", // Segundo apellido del miembro
    fechaNacimiento: DateTime(1995, 07, 15), // Fecha de nacimiento
    fotografia: "url/foto.jpg", // URL de la fotografía
    genero: "F", // Género
    tipoSangre: "O+", // Tipo de sangre
    membresiaID: 1, // ID de la membresía
    usuarioID: 1, // ID del usuario
    tipoMembresia: "Frecuente", // Tipo de membresía
  );
  print(miembro1); // Imprime la información del nuevo miembro

  // CASO DE PRUEBA 2 -- MIEMBRO QUE FUE TRABAJADOR DEL GIMNASIO
  final miembro2 = Miembro(
    ID: 102,
    tituloCortesia: "Sra.", // Título de cortesía
    nombre: "Alondra", // Nombre del miembro
    primerApellido: "Ojeda", // Primer apellido del miembro
    segundoApellido: "Castro", // Segundo apellido del miembro
    fechaNacimiento: DateTime(1985, 05, 10), // Fecha de nacimiento
    fotografia: "url/foto2.jpg", // URL de la fotografía
    genero: "F", // Género
    tipoSangre: "A+", // Tipo de sangre
    membresiaID: 2, // ID de la membresía
    usuarioID: 2, // ID del usuario
    tipoMembresia: "Ocasional", // Tipo de membresía
  );
  print(miembro2); // Imprime la información del miembro que fue trabajador

  // CASO DE PRUEBA 3 -- CANCELANDO LA MEMBRESÍA DE UN MIEMBRO
  print("Cancelando la membresía del miembro 1:");
  miembro1.cancelaSuscripcion(); // Cancela la suscripción del miembro 1
  print(miembro1); // Imprime la información actualizada del miembro 1
}

// Definición de la Clase Abstracta <Persona>
abstract class Persona {
  int ID; // Identificador único
  String? tituloCortesia; // Título de cortesía
  String nombre; // Nombre
  String primerApellido; // Primer apellido
  String segundoApellido; // Segundo apellido
  DateTime fechaNacimiento; // Fecha de nacimiento
  String? fotografia; // URL de la fotografía
  String genero; // Género ('M', 'F', 'N/B')
  String tipoSangre; // Tipo de sangre ('A+', 'A-', etc.)
  DateTime fechaRegistro; // Fecha de registro
  DateTime? fechaActualizacion; // Fecha de última actualización

  // Constructor de la clase Persona
  Persona({
    required this.ID,
    this.tituloCortesia,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.fechaNacimiento,
    this.fotografia,
    required this.genero,
    required this.tipoSangre,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
  })  : fechaRegistro = fechaRegistro ?? DateTime.now(), // Inicializa la fecha de registro
        fechaActualizacion = fechaActualizacion; // Inicializa la fecha de actualización

  // Definición de la Función de la Clase
  void cancelaSuscripcion(); // Método abstracto para cancelar la suscripción
}

// Declaración de la Clase <Miembro> que extiende de <Persona>
class Miembro extends Persona {
  int membresiaID; // ID de la membresía
  int usuarioID; // ID del usuario
  String tipoMembresia; // Tipo de membresía ('Frecuente', 'Ocasional', etc.)
  String antiguedad; // Antigüedad en meses
  bool estatus; // Activo/Inactivo

  // Sobreescritura de las Propiedades de la Clase Abstracta <Persona>
  Miembro({
    required int ID,
    String? tituloCortesia,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required DateTime fechaNacimiento,
    String? fotografia,
    required String genero,
    required String tipoSangre,
    required this.membresiaID,
    required this.usuarioID,
    required this.tipoMembresia,
    this.estatus = true, // Activo por defecto
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
  })  : antiguedad = "${DateTime.now().difference(fechaRegistro ?? DateTime.now()).inDays ~/ 30} meses", // Calcula antigüedad en meses
        super(
          ID: ID,
          tituloCortesia: tituloCortesia,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          fechaNacimiento: fechaNacimiento,
          fotografia: fotografia,
          genero: genero,
          tipoSangre: tipoSangre,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );

  // Métodos CRUD

  // Leer: Muestra la información del miembro
  void leer() {
    print(this); // Imprime la información del miembro
  }

  // Actualizar: Modifica el tipo de membresía
  void actualizar(String nuevaMembresia) {
    tipoMembresia = nuevaMembresia; // Actualiza el tipo de membresía
    fechaActualizacion = DateTime.now(); // Actualiza la fecha de modificación
    print("Membresía actualizada a: $tipoMembresia"); // Mensaje de confirmación
  }

  // Eliminar: Cambia el estado a inactivo
  void eliminar() {
    estatus = false; // Cambia el estado a inactivo
    fechaActualizacion = DateTime.now(); // Actualiza la fecha de modificación
    print("Miembro eliminado: $nombre $primerApellido."); // Mensaje de confirmación
  }

  // Sobreescritura de la Función cancelaSuscripcion()
  @override
  void cancelaSuscripcion() {
    estatus = false; // Cambia el estado a inactivo
    fechaActualizacion = DateTime.now(); // Actualiza la fecha de modificación
    print("La suscripción ha sido cancelada para $nombre $primerApellido."); // Mensaje de confirmación
  }

  @override
  String toString() {
    // Formato de la fecha de nacimiento
    final String formattedFechaNacimiento =
        "${fechaNacimiento.day.toString().padLeft(2, '0')}/" +
            "${fechaNacimiento.month.toString().padLeft(2, '0')}/${fechaNacimiento.year}";

    // Formato de la fecha de registro
    final String formattedFechaRegistro =
        "${fechaRegistro.day.toString().padLeft(2, '0')}/" +
            "${fechaRegistro.month.toString().padLeft(2, '0')}/${fechaRegistro.year} " +
            "${fechaRegistro.hour.toString().padLeft(2, '0')}:${fechaRegistro.minute.toString().padLeft(2, '0')}";

    // Retorna la representación del objeto en forma de string
    return """
    --------------------------------------------------------
    DATOS DEL MIEMBRO
    --------------------------------------------------------
    ID: $ID
    Nombre: $nombre $primerApellido $segundoApellido
    Género: $genero
    Tipo de membresía: $tipoMembresia
    Fecha de nacimiento: $formattedFechaNacimiento
    Antigüedad: $antiguedad
    Fecha de registro: $formattedFechaRegistro
    Estatus: ${estatus ? 'Activo' : 'Inactivo'}
    --------------------------------------------------------
    """;
  }
}
