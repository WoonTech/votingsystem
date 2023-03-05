import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:votingsystem/Providers/authentication_provider.dart';
import 'package:votingsystem/Screens/BottomNavPages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => AuthProvider())
      ],
      child:MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}