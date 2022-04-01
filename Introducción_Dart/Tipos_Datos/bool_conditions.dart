void main(){
  //Booleano -> verdadero o falso
  bool isActive=true;
  
  //Condicional
  if (isActive){
    print('Estamo activo, perro!');
  }
  else{
    print('Está inactivo');
  }
  
  //Si hay posibilidad de valores null entonces ponemos la interrogación
  
  bool? isInactive = null;
  
  if (isInactive == null){
    print('isInactive es null :(');
  }
  else{
    print('No está null :)');
  }
  
}