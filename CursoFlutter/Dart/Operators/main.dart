void main(){
  //OPERATORS

  /*
  - Arithmetic Operators ( +, -, *, / )
  - Relational Operators ( ==, !=, <, >, <=, >= )
  - Logical Operators ( AND &&, OR ||, NOT ! )
  - Assignment Operators ( =, +=, -=, *=, %= )
  - Ternary Operators ( condition ? if_true : if_false)
  - Null aware ??
  - Conditional Member access ?
  - Null Assertion Operator !
  */

  //Arithmetic Operators
  print(10+20);
  print(10-3);
  print(2/1.5);
  print(3*10);

  //Relational Operators
  print('Juanjo' == 'juanjo'); //Dará False porque es Key Sensitive
  print('Juanjo' != 'juanjo'); //Dará True porque es Key Sensitive
  print(10>20);
  print(10<3);
  print(2>=1.5);
  print(3<=10);

  //Logical Operators
   print(10<20 && 'Juanjo'.length == 6); //Ambas son correctas, retorna True
   print(10>20 || 'Juanjo'.length == 6); //Al menos una de las dos es correcta, retorna True
   // Ahora con el operador NOT lo haremos de otra forma totalmente válida
   final contains = 'Juanjo'.contains('a');
   print(!contains); //False porque negamos el valor de nuestra variable.
   print(!'Juanjo'.contains('x')); //Una forma más rápida de hacerlo

   //Queremos que solo los correos Gmail o yahoo sean aceptados
   /*final email = 'test@gmail.com';
   
   final next = email.endsWith('@gmail.com') || email.endsWith('@yahoo.com');*/

   //Ahora también debe incluir la palabra admin

  final email = 'test@gmail.com';
  //final next = email.contains('admin') && email.endsWith('@gmail.com') || email.endsWith('@yahoo.com');
  final next = (email.endsWith('@gmail.com') || email.endsWith('@yahoo.com')) && email.contains('admin'); // De esta forma le decimos que son dos condiciones distintas. Una es si es Gmail o Yahoo y la otra es si contiene admin.

  if(email != null && email.length > 0){ //Así le indicamos que compruebe si es diferente de null y que el tamaño es mayor que 0

  }
   print(next);

  //Assignment Operators

  var age = 18;
  //age = 29;
  //age += 29; //En este caso equivale al valor actual (18) + el valor nuevo (29)
  age -= 29; //En este caso equivale al valor actual (18) - el valor nuevo (29)
  print(age);

  var name = 'Juanjo';
  name += 'Garcia'; //Es lo mismo que name = name + 'Garcia';

  print(name);

  var price = 100;
  //price *= 10;
  //price /= 10;
  //price %= 10;
  price ~/= 13; //Es lo mismo que price = (price / 13).toInt();

  print(price);


  //Ternary Operators
  /*var initial ='';
  final familyName = 'Juanjo Garcia';

  if (familyName.length > 0){
    initial = familyName[0];
  } else {
    initial = 'N/A';
  } */

 //Las dos líneas siguientes equivalen al código anterior

  final familyName = 'Juanjo Garcia';
  //final initial = familyName.length > 0 ? familyName[0] : 'N/A';
  //final initial = familyName.isNotEmpty ? familyName[0] : 'N/A'; //Así es mejor
  final initial = familyName.length >= 2 ? '${familyName[0]}${familyName[1]}' : familyName.isNotEmpty ? familyName[0] : 'N/A'; //En este caso le indicamos que si tiene 2 o más caracteres el Family Name que utilice los dos primeros caracteres. No es recomendable aunque funcionará, es mejor usar un if else
  print(initial);

  //Null aware

  /*String? name2; //Si no inicializamos una variable que puede ser null, por defecto nos dará null
  print(name2);*/

  String? name2;
  if (DateTime.now().weekday == 6 ){
    name2 = 'Saturday';
  }

  //final playerName = name2 != null ? name2 : 'Guest'; //Así queda simplificado
  final playerName = name2 ?? 'Guest'; //Esto es el Null aware
  final playerName2 = getPlayerName() ?? 'Guest'; //Null aware con una función

  //También podemos usar el Null aware con el Null Conditional (Conditional Member Access)
  final playerName3 = getPlayerName();

  /*if (name2 != null ) {
    playerName = name2;
  } */

  print(playerName);
  print(playerName2);
  print(playerName3?[0] ?? '');
  



}

String? getPlayerName (){
  if (DateTime.now().weekday == 6 ){
    return 'Saturday';
  }
  return null;
} //Es otra forma de hacerlo utilizando una función