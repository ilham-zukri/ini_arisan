import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ini_arisan/testing/test_firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyCx9HTcgi-29ZbPLSb5XBdNOcCnqcCoERQ',
        appId: '1:991973340640:android:840b048f194faecc6f6785',
        messagingSenderId: '991973340640',
        projectId: 'iniarisan-6f3a5'),
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPage(),
    );
  }
}
