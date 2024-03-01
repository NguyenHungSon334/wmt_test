import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Call the function here with your desired collection name and document ID
    getAllFieldsAndPerformAction('Application', '1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Document Fields'),
      ),
      body: Center(
        child: Text(
          'Check your console for Firestore document fields!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

void getAllFieldsAndPerformAction(String collectionName, String documentId) async {
  try {
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection(collectionName).doc(documentId).get();

    if (documentSnapshot.exists) {
      Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
      // Perform action with the retrieved data
      print('Document fields:');
      data.forEach((key, value) {
        print('$key: $value');
      });
    } else {
      print('Document does not exist: $documentId');
    }
  } catch (e) {
    print('Error retrieving document: $e');
  }
}

