import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';

class HomePage extends StatelessWidget {
  // Contoh data list items
  final List<Item> items = [
    Item(
      name: 'Sugar', 
      price: 5000, 
      photo: 'assets/image/gula.jpg', 
      rating: 4.5,  // Nilai rating
      stock: 10,    // Stok tersedia
      nim: '362358302003',  // NIM
      nama: 'Leo eka matra', // Nama
    ),
    Item(
      name: 'Salt', 
      price: 2000, 
      photo: 'assets/image/garam.webp', 
      rating: 4.2,  // Nilai rating
      stock: 20,    // Stok tersedia
      nim: '362358302003',  // NIM
      nama: 'Leo eka matra', // Nama
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                // Navigasi ke halaman item saat item ditekan
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item, // Mengirim item ke ItemPage
                );
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            item.photo, // Path ke gambar di assets
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10), // Spasi antara gambar dan teks
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              'Rp ${item.price}', // Mengubah format harga
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      // Menampilkan rating barang
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          Text('${item.rating}', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      SizedBox(height: 5),
                      // Menampilkan stok barang
                      Text(
                        'Stok: ${item.stock}',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'NIM: 362358302003',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Nama: Leo eka matra',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}