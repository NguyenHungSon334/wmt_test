import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wmt_test/Crud/Data.dart';
import 'Crud/Information.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // addDataToUserCollection();
  // createUser("Username", "Password", "Department");
  // getAllData('Application');
  getInformation('Brand', '1');
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








