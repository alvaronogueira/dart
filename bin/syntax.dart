void main() {
  //escolherMeioTransporte(Transporte.patins);
  //contasBancariasEnum(Conta.investimentos);

  /*List<dynamic> destinos = [];
  String destino = 'Rio de Janeiro';
  destinos.add(destino);
  destinos.add(destino);
  destinos.add(destino);*/

  print(registrarDestinos('Salvador'));
}

registrarDestinos(String destino) {
  Set<String> registrosVisitados = <String>{};
  registrosVisitados.add(destino);
  return registrosVisitados;
}

/*void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print('Vou de CARRO para a aventura!');
  } else if (locomocao == 1) {
    print('Vou de BIKE para a aventura');
  } else {
    print('Vou para a aventura de pé mesmo');
  }
}*/

void escolherMeioTransporte(Transporte locomocao) {
  //if (locomocao == Transporte.carro) {
  //  print('Vou de CARRO para a aventura!');
  //} else if (locomocao == Transporte.bike) {
  //  print('Vou de BIKE para a aventura');
  //} else if (locomocao == Transporte.andando) {
  //  print('Vou de PÉ para a aventura');
  //} else if (locomocao == Transporte.skate) {
  //  print('Vou de SKATE para a aventura');
  //} else if (locomocao == Transporte.aviao) {
  //  print('Vou de AVIÃO para a aventura');
  //} else if (locomocao == Transporte.patins) {
  //  print('Vou de PATINS para a aventura');
  //} else if (locomocao == Transporte.trem) {
  //  print('Vou de TREM para a aventura');
  //} else {
  //  print('Eu acho que vou ficar em casam mesmo. Sem idade para aventuras!');
  //}

  switch (locomocao) {
    case Transporte.carro:
      print('Vou de CARRO para a aventura!');
      break;
    case Transporte.bike:
      print('Vou de BIKE para a aventura');
      break;
    case Transporte.andando:
      print('Vou de PÉ para a aventura');
      break;
    case Transporte.aviao:
      print('Vou de AVIÃO para a aventura');
      break;
    case Transporte.trem:
      print('Vou de TREM para a aventura');
      break;
    default:
      print('Eu vou é ficar em casa mesmo. Sem idade para aventuras!');
      break;
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }

void contasBancariasEnum(Conta contaTipo) {
  switch (contaTipo) {
    case Conta.salario:
      print('Essa é uma Conta Salário.');
      break;

    case Conta.poupanca:
      print('Essa é uma Conta Poupança.');
      break;

    case Conta.corrente:
      print('Essa é uma Conta Corrente.');
      break;

    default:
      print('Essa Conta não existe. Dados inválidos.');
      break;
  }
}

enum Conta { salario, poupanca, corrente, investimentos }
