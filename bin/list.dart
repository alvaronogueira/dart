//Criando listas//
void main() {
  //Lista Comum//
  List<String> listaNomes = ['Alberlane', 'Wilderlaide', 'Wevanny', 'Livisson', 'Jota'];
  
  //Lista Dinâmica//
  bool geek = false;

  List<dynamic> alvinho = [30, 'Hello, World!', 'alvinho', 1.69, 'Alvaro Nogueira'];

  String frase = '${alvinho[1]}! \n'
  'Eu sou  ${alvinho[4]},\n' 
  'mas meu apelido é ${alvinho[2]}.\n'
  'Eu tenho  ${alvinho[0]} anos e tenho ${alvinho[3]} de altura.\n'
  'Seria eu Geek? $geek';



  print(frase);
}