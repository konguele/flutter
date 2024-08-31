void main(){

  final int age = 36;

  //age = 13; //Al añadir final en la variable, no se puede modificar el resultado. Si no hay que modificarla, es bueno utilizarlo porque así prevenimos posibles errores y mejoramos el rendimiento de nuestra app, así no se reserva memoria innecesariamente.
  
  //En este caso no podemos usar la palabra var porque está reservada a valores que pueden modificarse en tiempo de ejecución

  var price = 1000.0;
  final double cupon = 0.05;
  price = price - price*cupon;
  final double iva = 0.21;
  final double taxes = price * iva;
  final double total = price + taxes;

  print('Price: $price');
  print('IVA: $iva');
  print('Taxes: $taxes');
  print('Total: $total');
}