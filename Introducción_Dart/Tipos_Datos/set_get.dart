import 'dart:math' as math;

void main(){
  final cuadrado = new Cuadrado( 2 );
  cuadrado.area=100;
  
  print('area: ${ cuadrado.calculaArea() }');
  
  print('lado: ${cuadrado.lado}');
  print('Area Get: ${cuadrado.area}');
  

}

class Cuadrado{
  double lado = 0;
  
  //Getter es un método que luce como propiedad
  double get area{
    return this.lado * this.lado;
  }
  
  //Set
 /* set area(double valor){
    print('set: $valor');
  } */
  
  set area(double valor){
    this.lado = math.sqrt(valor);
  }
  
  Cuadrado(double lado):
  this.lado = lado;
  
  double calculaArea(){
    return this.lado * this.lado;
  }
  
}