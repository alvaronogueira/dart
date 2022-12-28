class Fruta {
  String nome;
  String cor;

  Fruta(this.nome, this.cor);

  Fruta.nomeados({required this.nome, required this.cor});

  Fruta.minusculas(this.nome, this.cor) {
    nome = nome.toLowerCase();
    cor = cor.toLowerCase();
  }
}

main() {
  Fruta jambo = Fruta("jambo", "vermelho");
  Fruta abacaxi = Fruta("abacaxi", "verde/amarelo");
}
