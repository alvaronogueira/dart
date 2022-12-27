void main() {
  // Paradigma Oriantação Objeto //

  String nome = 'Laranja';
  double peso = 0.8;
  String cor = 'esverdeada';
  String sabor = 'azeda';
  String diasColhida = '';
  int diasPlantio = 30;
  bool isMadura = funcEstaMadura(diasPlantio);
  
  mostarMadura('graviola', 18, cor: 'verde musgo.');
  /*
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
  print(diasColhida); */
}

mostarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print('A $nome está madura!');
  } else {
    print('A $nome não está madura...');
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
