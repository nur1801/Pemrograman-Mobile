import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // Pratikum 1 : Eksperimen Tipe Data List
  // Langkah 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Langkah 3
  // final List<dynamic> list = List.filled(5, null);  // List dengan ukuran 5 dan default value null
  // assert(list.length == 5);
  
  // list[1] = "Nurhidayah";     // Mengisi nama pada index 1
  // list[2] = "2241760044";     // Mengisi NIM pada index 2
  
  // assert(list[1] != null);
  // assert(list[2] != null);
  
  // print("Panjang list: ${list.length}");
  // print("Index 1 (Nama): ${list[1]}");
  // print("Index 2 (NIM): ${list[2]}");
  // ----------------------------------------------------------

  // Pratikum 2 : Eksperimen Tipe Data Set
  // Langkah 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // Langkah 3
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  // var names1 = <String>{}; // Set of strings
  // Set<String> names2 = {}; // Set of strings
  
  // print(names1); // Output: {}
  // print(names2); // Output: {}

  // // Menambahkan nama dan NIM pada kedua variabel Set
  // names1.add("Nurhidayah");
  // names2.addAll({"Nurhidayah", "2241760044"});

  // print("Names1: $names1");
  // print("Names2: $names2");
  // -----------------------------------------------------

  // Pratikum 3: Eksperimen Tipe Data Maps
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // print(gifts);
  // print(nobleGases);

  // var mhs1 = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';

  // var mhs2 = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';

  // Mendeklarasikan Map<String, String> untuk gifts
  // var gifts = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';
  // gifts['name'] = 'Nurhidayah';  // Menambahkan nama
  // gifts['nim'] = '2241760044';   // Menambahkan NIM

  // // Mendeklarasikan Map<int, String> untuk nobleGases
  // var nobleGases = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';
  // nobleGases[1] = 'Nurhidayah';   // Menambahkan nama
  // nobleGases[2241760044] = 'NIM'; // Menambahkan NIM

  // // Mendeklarasikan Map<String, String> untuk mhs1
  // var mhs1 = Map<String, String>();
  // mhs1['name'] = 'Nurhidayah';   // Menambahkan nama
  // mhs1['nim'] = '2241760044';    // Menambahkan NIM

  // // Mendeklarasikan Map<int, String> untuk mhs2
  // var mhs2 = Map<int, String>();
  // mhs2[1] = 'Nurhidayah';        // Menambahkan nama
  // mhs2[2241760044] = 'NIM';      // Menambahkan NIM

  // // Output hasil Map
  // print("Gifts: $gifts");
  // print("Noble Gases: $nobleGases");
  // print("MHS1: $mhs1");
  // print("MHS2: $mhs2");
  // ------------------------------------------------------------

  // Pratikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // var list1 = [1, 2, null];
  // var list3 = [0, ...?list1];
  
  // var listNIM = ['2241760044'];  // List berisi NIM
  // var listWithNIM = [...list3, ...listNIM];  // Gabungkan dengan spread operator
  
  // print(listWithNIM);  // Output: [0, 1, 2, null, 2241760044]

  var record = ('first', a: 2, b: true, 'last');
  print(record);
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }
  var asli = (1, 2);
  var swap = tukar(asli);
  print(swap);
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // print(mahasiswa);
  var mahasiswa = ('Nurhidayah', 2241760044);
  print(mahasiswa);

  var mahasiswa2 = ('Nurhidayah', a: 2, b: true, '2241760044');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}