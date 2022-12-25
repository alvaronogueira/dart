void main() {
  String initial = "Hello World";
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

  String frase = 'Eu sou ${name}, tenho ${age} anos. Eu tenho mais de 18 anos? ${deMaior}';

  for(int i=1; i<=10; i++){
    print('Concluí $i voltas');
  }

  while(energia>20){
    print('Mais uma repetição');
    energia = energia - 10;
  }

}
