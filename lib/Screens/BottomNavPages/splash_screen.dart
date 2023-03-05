import 'package:flutter/material.dart';
import 'package:votingsystem/Models/Authentication/Users.dart';
import 'package:votingsystem/Screens/Authentication/auth_page.dart';
import 'package:votingsystem/Styles/colors.dart';
import 'package:votingsystem/Utils/router.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  
  void navigate(){
    Future.delayed(const Duration(seconds: 3),(){
      if(user == null){
        nextPageOnly(context, const AuthPage());
      }
      else
      {
        //navigate user to the main activity
      }
    });

  }

  @override
  void initState(){
    // TODO: implement initstate
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
        )
    );
  }
}