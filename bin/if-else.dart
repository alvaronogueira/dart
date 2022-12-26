void main() {
  /*String initial = "Hello World";
  int age = 30;
  double high = 1.69;
  String name = 'Álvaro Nogueira';
  String nickname;
  bool deMaior;
  int energia = 100;

  if (age >= 18) {
    deMaior = true;
  } else {
    deMaior = false;
  }

  String frase =
      'Eu sou ${name}, tenho ${age} anos. Eu tenho mais de 18 anos? ${deMaior}';

  for (int i = 1; i <= 10; i++) {
    /*print('Concluí $i voltas');*/
  }

  while (energia > 20) {
    /*print('Mais uma repetição');
    energia = energia - 10;*/
  }

  // Loop e controle de declaração (Break) //
  int conta = 1;

  while (conta <= 14) {
    ;
    ;
    /*print("Este é o ciclo $conta.");*/
    conta++;

    if (conta == 8) {
      break;
    }
  }
  /*print("Aqui se encerra o loop.");*/

  // Do, If, While //
  int calculo = 1;
  do {
    /*print('Você está contando $calculo');*/
    calculo++;

    if (calculo == 7) {
      break;
    }
  } while (calculo <= 10);
  /*print('Está fora do loop');*/

  for (double i = 1.0; i <= 10.0; i++) {
    if (i == 4) break;
    /*print("Loop $i");
  }
  print('Fora do Loop');*/
  }

  int contar = 0;
  while (contar <= 7) {
    contar++;
    if (contar == 5) {
      print('O número 5 foi pulado');
      continue;
    }
    print('A contagem está em $contar');
  }
  print('Agora está fora de contagem');*/

  for (int i = 1; i <= 10; ++i) {
    if (i == 2) {
      print('Pega visão no loop $i');
      continue;
    }
    print("Agora, você está fora da visão no loop $i");
  }
}
