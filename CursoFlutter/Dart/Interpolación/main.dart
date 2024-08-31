void main(){

  var name = 'Juanjo';
  var lastName = 'Garcia';
  var age = 36;

  //var username = name + lastName + 100.toString();
  //var username = '$name$lastName'; //Aquí hemos realizado la interpolación
  //var username = '$name$lastName\100'; //Así interpolamos las dos variables y un entero
  //var username = '$name$lastName$age'; //Dentro de comillas implícitamente se llama a la función toString
  //var username = '${name[0]}${lastName[0]}$age'; //Entre llaves podemos pedir más operaciones, como que elija el primer caracter
  var username = '${name.length}${lastName[0]}$age'; //En este ejemplo es con la longitud de caracteres
  print(username);
}