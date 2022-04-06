abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}
class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Caminante, Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador, Nadador{}

void main(){
  final flipper = new Delfin();
  final batman = new Murcielago();
  final aristogato = new Gato();
  final palomino = new Paloma();
  final donald = new Pato();
  final sharknado = new Tiburon();
  final pescado = new PezVolador();
  
  flipper.nadar();
  batman.volar();
  batman.caminar();
  aristogato.caminar();
  palomino.caminar();
  palomino.volar();
  donald.caminar();
  donald.nadar();
  donald.volar();
  sharknado.nadar();
  pescado.nadar();
  pescado.volar();
  
}