void main(){
  final wolverine = new Heroe(); //No es obligatoria la palabra new, es opcional. Aunque es recomendado para indicar claramente que es una clase
  final spiderman = new SuperHeroe('Peter','Sentido Arácnido');
  
  wolverine.nombre = 'Logan';
  wolverine.poder = 'Regeneración';
  
  print(wolverine);
  print(spiderman);
}

class Heroe{
  
  String? nombre;
  String? poder;
  
  //Sobreescribimos el método toString para que Dart sepa lo que tiene que imprimir
  @override
  String toString(){
    return 'nombre: ${this.nombre}';
  }
}

class SuperHeroe{
  String superNombre;
  String superPoder;
  
  //Para poder hacer que nuestras variables no den error, deben estar inicializadas en el constructor
  
  SuperHeroe(this.superNombre,this.superPoder); //Constructor
  
  //Así le indicamos que es obligatorio enviarlos
  /*SuperHeroe({
    required this.superNombre,
    required this.superPoder
  });*/
  
  String toString(){
    return 'SuperHeroe: superNombre: ${this.superNombre}, superPoder: ${this.superPoder}';
  }
}