import 'package:flex_mobile_app/provider/sum.dart';
import 'package:flex_mobile_app/provider/variables.dart';
import 'package:flex_mobile_app/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'logic/shared_prefs.dart';
import 'provider/overall_price.dart';
import 'screens/login_screen/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "flex_mobile_app",
    options: FirebaseOptions(
        apiKey: "AIzaSyA95B_llwEBBzQwliJRcsD-d8f9qRDi0kQ",
        authDomain: "flexpozivnicazakurira.firebaseapp.com",
        projectId: "flexpozivnicazakurira",
        storageBucket: "flexpozivnicazakurira.appspot.com",
        messagingSenderId: "337659174249",
        appId: "1:337659174249:web:0c20f334b0e0856f0bf1f8",
        measurementId: "G-FH746PSDQD"
    ),
  );
  SharedPrefs().init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Sum()),
        ChangeNotifierProvider(create: (_) => OverallPrice()),
        ChangeNotifierProvider(create: (_) => Variables()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flex kurirska sluzba",
      theme: ThemeData(),
      home: context.read<Variables>().loginEmail == null || context.read<Variables>().loginPassword == null ? LoginScreen() : DashboardScreen(),
    );
  }
}
