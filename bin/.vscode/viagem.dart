import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = "LATOEROI23"
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao);
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

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
  }

  void registrarPrecoVisita (String local, dynamic preco){
    registrarPrecos[local] = preco;
  }
}
