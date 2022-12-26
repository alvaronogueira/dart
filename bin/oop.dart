import 'dart:mirrors';

void main() {
  // Paradigma Oriantação Objeto //

  String nome = 'Laranja';
  double peso = 0.8;
  String cor = 'esverdeada';
  String sabor = 'azeda';
  String diasColhida = '';
  int diasPlantio = 30;
  bool isMadura;

  if (diasPlantio >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
  if (isMadura == true) {
    diasColhida = 'Claro! Essa fruta foi colhida há $diasPlantio dias.';
  } else {
    diasColhida =
        'Meu amigo, ela foi colhida há $diasPlantio dias. Isso é pouco tempo! ';
  }

  print(diasColhida);
}
