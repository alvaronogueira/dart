//Criando listas//
void main() {
  //Lista Comum//
  List<String> listaNomes = [
    'Alberlane',
    'Wilderlaide',
    'Wevanny',
    'Livisson',
    'Jota'
  ];

  // Lista Dinâmica // Var, Const e Final //
  String initial = "Hello World";
  int age = 30;
  double high = 1.69;
  bool geek = false;
  const String name = 'Álvaro Nogueira';
  final String nickname;

  nickname = 'alvinho';

  List<dynamic> alvinho = [
    30,
    'Hello, World!',
    'alvinho',
    1.69,
    'Alvaro Nogueira'
  ];

  String frase = '${alvinho[1]}! \n'
      'Eu sou  ${alvinho[4]},\n'
      'mas meu apelido é ${alvinho[2]}.\n'
      'Eu tenho  ${age = 420} anos e tenho ${alvinho[3]} de altura.\n'
      'Seria eu Geek? $geek';

  // Lista dinâmica 2 //
  List<dynamic> aleatorio = [age, initial, nickname, high, name];

  // Lista com média de notas //
  List<dynamic> medAna = ['Ana', 'UFBA', 8.75];
  List<dynamic> medAbreu = ['Abreu', 7.3, 'UERJ'];
  List<dynamic> medBruce = [9.9, 'Bruce', 'UFPel'];

  double media = (medAna[2] + medAbreu[1] + medBruce[0]) / 3;
  print(media);
}
