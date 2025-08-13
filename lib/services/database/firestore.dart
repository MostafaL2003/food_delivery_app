import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //ORDERS COLLECTION
  final CollectionReference orders = FirebaseFirestore.instance.collection(
    "orders",
  );
  //SAVE TO DATA BASE
  Future<void> saveOrderToDataBase(String receipt) async {
    await orders.add({'date': DateTime.now(), 'order': receipt});
  }
}
