/* void main() {
  // Paradigma Oriantação Objeto //
  
  String nome = 'Laranja';
  double peso = 0.8;
  String cor = 'esverdeada';
  String sabor = 'azeda';


  
  String diasColhida = '';
  int diasPlantio = 30;
  bool isMadura = funcEstaMadura(diasPlantio);
  
  mostarMadura('graviola', 18, cor: 'verde musgo.');
  
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
  

  String nome = 'Laranja';
  int peso = 98;
  int diasDesdeColheita = 20;
  int diasParaMadura = 29;
  bool isMadura;
  if (diasDesdeColheita >= diasParaMadura) {
    isMadura = true;
  } else {
    isMadura = false;
  }
  if (isMadura == true) {
    print('Está madura.');
  } else {
    print('Não está madura.');
  }

  String frase =
      "A $nome pesa $peso gramas! Ela foi colhida há $diasDesdeColheita dias e precisa de $diasParaMadura dias para amadurecer, logo, $isMadura.";

  print(frase);
}
*/

// Classe, Propriedade e Construtor //

void main() {
  String nome = 'Laranja';
  double peso = 0.8;
  String cor = 'verde';
  String sabor = 'doce';
  int diasColhida = 27;
  bool isMadura = true;

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasColhida);
  Fruta fruta02 = Fruta(nome, peso, cor, sabor, diasColhida);
  Fruta fruta03 = Fruta("jambo", 0.9, 'vermelho', "agridoce", 7);

  /*
  print(fruta01.diasColhida);
  print(fruta01);
  print(fruta03.nome);

  fruta01.estaMadura(11);
  fruta03.estaMadura(7);
   */

  Legumes mandioca1 = Legumes('macaxeira', 1099, 'marrom', true);
  Fruta siriguela = Fruta('siriguela', 15, 'amarelo', 'doce', 12);
  Nozes macadamia1 = Nozes('macadamia1', 9, 'branco amarelado', 'doce', 12, 47);
  citricos limao = citricos('limão', 86, 'verde', 'bem azedo', 5, true, 8.9);

  mandioca1.printAlimento();
  siriguela.printAlimento();
  macadamia1.printAlimento();
  limao.printAlimento();

  mandioca1.cozinhar();
  // mandioca1.preparandoMeuSuco(); //não funciona
  //limao.cozinhar(); //não funciona    
  limao.preparandoMeuSuco();
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasParaMadura >= diasDesdeColheita;
    print(
        'A $nome foi colhida há 25 dias atrás, mas precisa de $diasDesdeColheita dias para ser degustada. Ela está madura? $isMadura');
  }

  void preparandoMeuSuco() {
    print('Você acabou de fazer um suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(
          nome,
          peso,
          cor,
        );

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Prontinho, o $nome está cozinhando!');
    } else {
      print('Relaxe, nem precisa cozinhar');
    }
  }
}

class citricos extends Fruta {
  double nivelAzedo;

  citricos(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool tem) {
    if (tem) {
      print('Nós temos o refrigerante $nome');
    } else {
      print('Não temos o refrigerante $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}
