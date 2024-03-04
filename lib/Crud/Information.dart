import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> createInformation(Collection, Data) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection('Information')
        .doc('1')
        .collection(Collection.toString())
        .add(Data);
  } catch (e) {
    print('Error adding data to User collection: $e');
  }
}

Future<void> deleteInformation(String Collection, String Id) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db
        .collection('Information')
        .doc('1')
        .collection(Collection)
        .doc(Id)
        .delete();
  } catch (e) {
    print('Error deleting user: $e');
  }
}

Future<void> updateInformation(String Collection, String Id, Data) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db
        .collection('Information')
        .doc('1')
        .collection(Collection)
        .doc(Id)
        .update(Data);
  } catch (e) {
    print('Error updating user: $e');
  }
}

Future<DocumentSnapshot?> getInformation(String collection, String id) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    DocumentSnapshot documentSnapshot = await db
        .collection('Information')
        .doc('1')
        .collection(collection)
        .doc(id)
        .get();
    if (documentSnapshot.exists) {
      return documentSnapshot;
    } else {
      print('Document with ID $id does not exist.');
      return null;
    }
  } catch (e) {
    print('Error retrieving user data: $e');
    throw e;
  }
}

