void main(){
  //String -> Cadena de caracteres
  String nombre = 'Juanjo'; //Esta forma es la más lógica
  var apellido = 'Garcia'; //Se puede poner var, pero no es recomendable
  final apellido2 = 'Manzano'; //Si elijes final, no se puede modificar el valor (Se mantiene igual hasta finalizar su primera inicialización)
  const ciudad = 'Urdorf'; //El valor no va a cambiar en tiempo de compilación
  
  print(nombre);
  
  //Concatenar
  print('$nombre $apellido $apellido2');
  
  
  //Números
  int empleados = 10; //Lo normal para números
  double salario = 1856.25; //Cuando son decimales o grandes números se usa double
  
  print(empleados);
  print(salario);
}