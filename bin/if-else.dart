void main() {
  String initial = "Hello World";
  int age = 30;
  double high = 1.69;
  String name = 'Álvaro Nogueira';
  String nickname;
  bool deMaior;
  if (age >= 18) {
    deMaior = true;
  } else {
    deMaior = false;
  }  
  String frase = 'Eu sou ${name}, tenho ${age} anos. Eu tenho mais de 18 anos? ${deMaior}';

  for(int i=0; i<5; i++){}

  print(frase);
}
