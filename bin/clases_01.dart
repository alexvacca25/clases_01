void main() {
  /*
  Colores azul = Colores("Azul", "Primario");
  print("${azul.nombre} - ${azul.tipo}");

  Colores2 verde = Colores2("Verde", "Primario");
  print("${verde.nombre} - ${verde.tipo}");

  Colores3 blanco = Colores3(nombre: "Morado");
  print("${blanco.nombre} - ${blanco.tipo}");
  Estudiante alex = Estudiante("Alex Vacca", "1001");
  print("${alex.nombre} - ${alex.id} - ${alex.n1}");

  var estu = {'nombre': 'Pedro Perz', 'id': '1002'};
  Estudiante2 pedrito = Estudiante2.desdeJson(estu);

  print(pedrito.nombre);
  print(pedrito.id);
  print(pedrito.n1);
*/
  var estud = {
    'nombre': 'juan Perz',
    'id': '1003',
    'n1': 2.5,
    'n2': 3.0,
    'n3': 4
  };
  Estudiante3 juan = Estudiante3.desdeJson(estud);
  print(juan.nombre);
  print(juan.id);
  print(juan.n1);

  List<Estudiante3> listarEstudiantes = [];

  listarEstudiantes.addAll([juan, juan, juan, juan, juan]);

  for (var item in listarEstudiantes) {
    print("${item.nombre} - ${item.id}- ${item.n1} - ${item.n2}- ${item.n3}");
  }
}

class Estudiante3 {
  var nombre;
  var id;
  var n1;
  var n2;
  var n3;
  Estudiante3({this.nombre, this.id, this.n1, this.n2, this.n3});
  factory Estudiante3.desdeJson(Map json) {
    return Estudiante3(
        nombre: json['nombre'],
        id: json['id'],
        n1: json['n1'],
        n2: json['n2'],
        n3: json['n3']);
  }
}

class Estudiante2 {
  var nombre;
  var id;
  var n1;
  var n2;
  var n3;
  Estudiante2.desdeJson(Map jsonMap) {
    nombre = jsonMap['nombre'];
    id = jsonMap['id'];
    n1 = 0.0; //jsonMap['n1'];
    n2 = 0.0; //jsonMap['n2'];
    n3 = 0.0; //jsonMap['n3'];
  }
}

class Estudiante {
  var nombre;
  var id;
  var n1;
  var n2;
  var n3;
  Estudiante(this.nombre, this.id,
      {this.n1 = 0.0, this.n2 = 0.0, this.n3 = 0.0});
}

class Colores {
  var nombre;
  var tipo;

  Colores(String nombre, String tipo) {
    this.nombre = nombre;
    this.tipo = tipo;
  }
}

class Colores2 {
  var nombre;
  var tipo;

  Colores2(this.nombre, this.tipo);
}

class Colores3 {
  var nombre;
  var tipo;

  Colores3({String nombre = 'Blanco', String tipo = ''}) {
    this.nombre = nombre;
    this.tipo = tipo;
  }
}
