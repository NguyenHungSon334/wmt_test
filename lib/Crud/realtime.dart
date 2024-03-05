import 'package:firebase_database/firebase_database.dart';

void create() {
    final dbRef = FirebaseDatabase.instance
        .ref()
        .child("Items")
        .child("Accessories_and_Supplies")
        .child("10002");
    dbRef.set({
      'Application': 'test',
      'Brand': 'test brand',
      'Declaration': '',
      'Event': '',
      'History': '',
      'Model': '',
      'Note': '',
      'Operating_frequency': '',
      'Original_ownership': '',
      'Project': '',
      'QR_code': '',
      'Quantity': '',
      'Status': '',
      'Storage_location': '',
      'Unit': ''
    });
  }

  void read() {
    final dbRef = FirebaseDatabase.instance
        .ref()
        .child("Items")
        .child("Accessories_and_Supplies")
        .child("10002");
    //read data from firebase realtime database
    dbRef.once().then((DatabaseEvent event) {
      final snapshot = event.snapshot;
      print('Items : ${snapshot.value}');
    });
  }

  void update() {
    final dbRef = FirebaseDatabase.instance
        .ref()
        .child("Items")
        .child("Accessories_and_Supplies")
        .child("10002");
    // Update data in Firebase Realtime Database
    dbRef.update({
      'Application': 'updated application',
      'Brand': 'updated brand',
    });
  }

  void delete() {
    final dbRef = FirebaseDatabase.instance
        .ref()
        .child("Items")
        .child("Accessories_and_Supplies")
        .child("10002");
    // Delete data from Firebase Realtime Database
    dbRef.remove();
  }