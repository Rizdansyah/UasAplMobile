import 'package:app_inventory/models/inventory.dart';
import 'package:app_inventory/provider/firestore_service.dart';
import 'package:flutter/material.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  late TextEditingController nameController;
  late TextEditingController deskripsiController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    deskripsiController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    deskripsiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inventory Page'),
          actions: [
            IconButton(
                onPressed: () {
                  FireStoreService.addInventory(
                    Inventory(
                        name: nameController.text,
                        description: deskripsiController.text),
                  );
                },
                icon: const Icon(Icons.check)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Masukan Nama Barang',
                  label: Text('Nama Barang'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: deskripsiController,
                decoration: const InputDecoration(
                  hintText: 'Masukan Deskripsi Barang',
                  label: Text('Deskripsi Barang'),
                ),
              )
            ],
          ),
        ));
  }
}
