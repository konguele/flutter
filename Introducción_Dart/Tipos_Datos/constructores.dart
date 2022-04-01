void main(){
  
  final rawJson = {
    'nombre':'Tony Stark',
    'poder':'Dinero'
  };
  
  /*final ironman = new SuperHeroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  print(ironman);*/
  
  final ironman = SuperHeroe.fromJson(rawJson);
  print(ironman);
  }

class SuperHeroe{
  String nombre;
  String poder;
  
  //Así le indicamos que es obligatorio enviarlos
  SuperHeroe({
    required this.nombre,
    required this.poder
  });
  
  //Constructor por nombre. Indica que se va a ejecutar en el momento que se está creando la instancia de la clase
  SuperHeroe.fromJson(Map<String, String> json):
    this.nombre = json['nombre'] ?? 'Antoñito Sinnombre',
    this.poder = json['poder'] ?? 'No tiene poder'; //Si no le mandas un argumento te dice que no tiene poder
  
  
  String toString(){
    return 'SuperHeroe: Nombre: ${this.nombre}, Poder: ${this.poder}';
  }
}