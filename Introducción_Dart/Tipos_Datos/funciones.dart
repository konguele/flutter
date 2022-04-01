void main(){
  final nombre = 'Juanjo';
  final String nombre2 = 'Perro';
  
  saludar(); //Llamamos a la función
  saludar2(nombre); //Llamamos a la función con un argumento
  saludar3(); //Si no le pasamos ningún valor y espera un valor opcional, le dará el que hayamos definido
  saludar4( mensaje: 'Sanche',nombre: nombre2); //Le pasamos argumentos que pueden ser opcionales o null
  saludar5(mensaje: 'Sanche',nombre: nombre2); //Le obligamos a darle los argumentos
}

//Creamos la función
void saludar(){
  print('Hola chavaleria!');
}

//Argumento posicional obligatorio
void saludar2(String nombre){
  print('Hola $nombre!');
}

//Argumentos opcionales
void saludar3([String nombre = 'No Name']){
  print('Hola $nombre!');
}


//Le pasamos los argumentos, sin orden para que cada uno elija
void saludar4( {String nombre = 'no name',String? mensaje}){
  print('$nombre $mensaje');
}

//Obliga a darle argumentos
void saludar5( {required String nombre,
                required String mensaje}){
  print('$nombre $mensaje');
}
