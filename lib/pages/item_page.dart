import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil argumen yang dikirim dari HomePage
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${itemArgs.name}'),
        backgroundColor: const Color.fromARGB(255, 63, 9, 156),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Menampilkan gambar item
                  Image.asset(
                    itemArgs.photo,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  // Menampilkan nama item
                  Text(
                    itemArgs.name,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 227, 46, 49),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Menampilkan harga item
                  Text(
                    'Rp ${itemArgs.price}',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 198, 203, 47),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Menampilkan rating
                  Text(
                    'Rating: ${itemArgs.rating}',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  // Menampilkan stok
                  Text(
                    'Stok: ${itemArgs.stock} pcs',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  // Menampilkan NIM dan Nama
                  Text(
                    'NIM: ${itemArgs.nim}',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Nama: ${itemArgs.nama}',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  // Tombol Aksi (contoh beli)
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi beli
                    },
                    icon: Icon(Icons.shopping_cart),
                    label: Text('Beli Sekarang'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 32, 228, 91),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
