void main() {
  escolherMeioTransporteEnum(Transporte.trem);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print('Vou de CARRO para a aventura!');
  } else if (locomocao == 1) {
    print('Vou de BIKE para a aventura');
  } else {
    print('Vou para a aventura de pé mesmo');
  }
}

void escolherMeioTransporteEnum(Transporte locomocao) {
  if (locomocao == Transporte.carro) {
    print('Vou de CARRO para a aventura!');
  } else if (locomocao == Transporte.bike) {
    print('Vou de BIKE para a aventura');
  } else if (locomocao == Transporte.andando) {
    print('Vou de PÉ para a aventura');
  } else if (locomocao == Transporte.skate) {
    print('Vou de SKATE para a aventura');
  } else if (locomocao == Transporte.aviao) {
    print('Vou de AVIÃO para a aventura');
  } else if (locomocao == Transporte.patins) {
    print('Vou de PATINS para a aventura');
  } else if (locomocao == Transporte.trem) {
    print('Vou de TREM para a aventura');
  } else {
    print('Eu acho que vou ficar em casam mesmo. Sem idade para aventuras!');
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }
