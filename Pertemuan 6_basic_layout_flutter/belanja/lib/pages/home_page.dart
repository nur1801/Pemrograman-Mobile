import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Mengimpor model Item

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, imageUrl: 'assets/sugar.jpeg', stock: 100, rating: 4.5),
    Item(name: 'Salt', price: 2000, imageUrl: 'assets/salt.png', stock: 50, rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      // Navigasi menggunakan Navigator dan mengirimkan item sebagai argument
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Hero(
                          tag: item.name, // Tag unik berdasarkan nama item
                          child: Image.asset(item.imageUrl),
                        ),
                        title: Text(item.name),
                        subtitle: Text('Stock: ${item.stock} | Rating: ${item.rating}'),
                        trailing: Text('Rp ${item.price}'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'Nurhidayah - NIM: 2241760044',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
