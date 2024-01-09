import 'package:app_inventory/models/inventory.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  static Future<void> addInventory(Inventory inventory) async {
    await FirebaseFirestore.instance
        .collection('inventories')
        .add(inventory.toJson());
  }
}
