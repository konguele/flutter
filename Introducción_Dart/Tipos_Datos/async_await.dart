void main() async{
  print('Antes de la petición');
  
  final data = await httpGet('https://api.nasa.com/aliens');
  
  httpGet('https://api.nasa.com/aliens').then( (data) {
    print(data.toUpperCase()); //Si especificamos el tipo de dato en la función, tendremos todas sus caracteristicas
  }); //Es una tarea asíncrona que se hace a destiempo. Se hace en otro hilo distinto.
      //La idea es que mientras se ejecuta la aplicación esto se resuelve a su rollo.
  print(data);
  
  final nombre = await getNombre('10'); //Solo trabaja con funciones asíncronas, por lo que debemos cambiar el main
  getNombre('10').then(print);
  print(nombre);
  print('Fin del programa');
}

Future<String> getNombre(String id) async{
  return '$id - Juanjo';
} //Se mandan a ejecutar y se muestra cuando puede, no prioriza estas peticiones


Future<String> httpGet( String url){
  return Future.delayed( Duration( seconds: 3 ), (){
    return 'Hola Mundo - 3 segundos';
  });
  
  //El delayed es una propiedad estática (Método) y para medir el tiempo usamos Duration
  //Según el tiempo que le des, puede acabar el programa y después mostrar el resultado.
}