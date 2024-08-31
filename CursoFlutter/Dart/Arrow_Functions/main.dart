void main() {
  print(
    createUserName('Juanjo', 'Garcia'),
  );

  printMessage();

}

String createUserName(
  String firstName,
  String lastName,
) => '$firstName$lastName'; // El => Es para simplificar y tenerlo en una sóla línea de código

void printMessage() => print('Hello');
