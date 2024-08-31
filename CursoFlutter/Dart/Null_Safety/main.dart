void main(){
  /*var name = 'Juanjo';

  name = null; //No podemos asignarlo porque String no permite valores nulos*/

//Para admitir valores nulos forzosamente utilizaremos el tipo de dato y un interrogante al final ej: String?

String? name = 'Juanjo';

//name = null;

if(10 < 5){
  name = null;
}

//Añadimos una validación para que compruebe si es nulo o no y así poder realizar diferentes operaciones
if(name != null){
  print(name.length);  
  }

}

