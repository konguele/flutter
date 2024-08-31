void main(){
  final result = sum(100, 300);
  printMessage('Hello Juanjo');
  print(sum(100, 300)); //Imprimimos por pantalla el resultado de la función directamente
  print(result); //Imprimimos por pantalla la variable que hemos creado en el main llamada result

}


void printMessage(String text){
  print(text);
}

//Si debe retornar datos utilizaremos la función así

int sum(int a, int b){
  /*final result = a+b;

  return result;*/

  return a+b;
}