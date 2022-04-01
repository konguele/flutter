void main(){
  //Map -> Se conoce como objetos literales en otros lenguajes
  
  Map persona = {
    'nombre':'Juanjo',
    'edad':33,
    'soltero':false,
    true:false
  };
  
  print(persona['nombre']);
  
  //Es raro, pero podemos poner true o false como llave de la siguiente manera
  print(persona[true]);
  
  
  //Es bueno indicarle el tipo de dato que puede incluir para que no se vea raro
  
    Map<String, dynamic> persona2 = {
    'nombre':'Juanjo',
    'edad':33,
    'soltero':false
  };
  
  persona2.addAll({'apellido':'García'});
  
  print(persona2);
  
}