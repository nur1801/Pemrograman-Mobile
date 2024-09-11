import 'package:pratikum3/pratikum3.dart' as pratikum3;

void main(List<String> arguments) {
  // PRATIKUM 1

  // String test = "test2";
  // if (test == "test1") {
  //   print("Test1");
  // } else if (test == "test2") {
  //   print("Test2");
  // } else {
  //   print("Something else");
  // }

  // if (test == "test2") print("Test2 again");

  // String test = "true";
  //   if (test == test) {
  //     print("Kebenaran");
  // }
  // ----------------------------------------

  // PRATIKUM 2

  // int counter = 20;
  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  // int counter = 70;
  // do {
  //   print(counter);
  //   counter++;
  // } while (counter < 77);
  // --------------------------------------

  // PRATIKUM 3

  // int index ;
  // for (index = 10; index < 27; index++) {
  //   print(index);
  // }

  // for (int index = 1; index < 30; index++) {
  // if (index == 21) {
  //     break;
  //   } else if (index > 1 && index < 7) {
  //     continue;
  //   }
  //   print(index);
  // }
  // ---------------------------------------

  // TUGAS PRATIKUM
  String namaLengkap = "Nurhidayah";
  String NIM = "2241760044";

  for (int i = 0; i <= 201; i++) {
      if (isPrima(i)) {
        print("Bilangan prima: $i");
        print("Nama: $namaLengkap");
        print("NIM: $NIM");
        print("");
      }
    }
  }
  bool isPrima(int number) {
    if (number <= 1) {
      return false;
    }

    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
}