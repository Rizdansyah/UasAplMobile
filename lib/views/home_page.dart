import 'package:app_inventory/views/inventory_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inventory App'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const InventoryPage();
              },
            ));
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const InventoryPage();
                  },
                ));
              },
              title: const Text('Barang 1'),
              subtitle: const Text('Deskripsi Barang 1'),
            ),
            const ListTile(
              title: Text('Barang 1'),
              subtitle: Text('Deskripsi Barang 1'),
            ),
            const ListTile(
              title: Text('Barang 1'),
              subtitle: Text('Deskripsi Barang 1'),
            ),
            const ListTile(
              title: Text('Barang 1'),
              subtitle: Text('Deskripsi Barang 1'),
            ),
            const ListTile(
              title: Text('Barang 1'),
              subtitle: Text('Deskripsi Barang 1'),
            ),
          ],
        ));
  }
}
