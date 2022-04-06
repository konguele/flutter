void main(){
  print('Antes de la petición');
  
  httpGet('https://api.nasa.com/aliens').then( (data) {
    print(data.toUpperCase()); //Si especificamos el tipo de dato en la función, tendremos todas sus caracteristicas
  }); //Es una tarea asíncrona que se hace a destiempo. Se hace en otro hilo distinto.
      //La idea es que mientras se ejecuta la aplicación esto se resuelve a su rollo.
  
  print('Fin del programa');
}

Future<String> httpGet( String url){
  return Future.delayed( Duration( seconds: 3 ), (){
    return 'Hola Mundo - 3 segundos';
  });
  
  //El delayed es una propiedad estática (Método) y para medir el tiempo usamos Duration
  //Según el tiempo que le des, puede acabar el programa y después mostrar el resultado.
}