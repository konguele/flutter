void main(){
  //Si conocemos el valor de una variable antes del tiempo de ejecución es mejor usar const. Ganamos una mejora en el rendimiento porque la referencia a este dato está guardado antes de ejecutarse la App.
  const iva = 0.12;
  final currentDate = DateTime.now();

  const a= 10;
  const b= 40;

  const sum = a+b; //Aquí no asignamos realmente el valor de la suma en tiempo de ejecución.

  const c = 'Juanjo';
  const d = 36;

  const sum2 = '$c$d'; //También se pueden concatenar

}