void main(){
  //Lista -> Es un array en C++
  
  List numeros = [1,2,3,4,5,6,7,8,9,10];
  
  //Métodos de las listas se despliegan con el .
  
  numeros.add(11);
  
  print(numeros);
  
  //Para tomar una posición del lista abrimos y cerramos corchetes con la posición, empieza en 0.
  
  print(numeros[4]);
  
  //Si mandamos un string también lo acepta
  numeros.add('Juanjo');
  
  print(numeros);
  
  //Para garantizar que solo añadimos números y no permita otros datos lo haríamos de la siguiente manera
  
  List<int> numeros2 = [1,2,3,4,5,6,7,8,9,10];
  print(numeros2);
  
  //Un método estático es una función que puedes llamar sin crearla. Podemos mandar un número o index que envía los números del 0 al que le digas
  
  final masNumeros = List.generate(100, (int index) => index);
  
  print(masNumeros);
}