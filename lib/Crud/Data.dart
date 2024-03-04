import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> createData(String Collection, Data) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection(Collection)
        .add(Data);
  } catch (e) {
    print('Error adding data to User collection: $e');
  }
}

Future<void> deleteData(String Collection, String Id) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db.collection(Collection).doc(Id).delete();
  } catch (e) {
    print('Error deleting user: $e');
  }
}

Future<void> updateData( String Collection,String Id, Data) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db.collection(Collection).doc(Id).update(Data);
  } catch (e) {
    print('Error updating user: $e');
  }
}


Future<QuerySnapshot> getAllData(String collection) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await db.collection(collection).get();
    return querySnapshot; // Return the QuerySnapshot
  } catch (e) {
    print('Error retrieving data: $e');
    throw e; // Throw the error to be handled by the caller
  }
}


Future<DocumentSnapshot?> getData(String collection, String id) async {
  try {
    FirebaseFirestore db = FirebaseFirestore.instance;
    DocumentSnapshot documentSnapshot = await db.collection(collection).doc(id).get();
    if (documentSnapshot.exists) {
      return documentSnapshot;
    } else {
      print('Document not found');
      return null; // Return null if document not found
    }
  } catch (e) {
    print('Error retrieving data: $e');
    throw e; // Throw the error to be handled by the caller
  }
}
