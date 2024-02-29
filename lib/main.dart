import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grocery_fusion_admin/firebase_option.dart';
import 'package:grocery_fusion_admin/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  try{
    Firebase.initializeApp(options: firebaseOptions);
  }catch(error){
    print("Error Firebase Setup");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grocery Fusion Admin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

