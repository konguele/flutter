//Instalamos la extensión IntelliJ IDEA Keybindings
// ctrl + alt + l -> Formatea el código
// ctrl + d duplica una línea

void main() {
  print(
    createUserName('Juanjo', 'Garcia'),
  );
}

String createUserName(
  String firstName,
  String lastName,
) {
  return '$firstName$lastName';
}
