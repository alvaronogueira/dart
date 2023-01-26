void stackStart() {
  print("Started Main");
  functionOne();
  print("Finished Main");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
    rethrow;
  } finally {
    print("Chegou no finally");
  }

  /*} on FormatException catch (e) {
    print("Foi capturada dentro da FunctionOne");
    print(e.message);
    print(e.source);
    print(e.toString());
  } on HttpClient catch (e) {
    e.toString();
  } 
  on IOException catch (e) {
    print("Uma IOException foi encontrada");
    e.toString();
  }
   on Exception catch (e) {
    print(e.toString());
  }*/
  print("Finished F01");

  functionTwo();
  print("Started F02");
}

void functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number");
  }
  print("Finished F02");
}
