import 'package:flutter/material.dart';

import '../../Styles/colors.dart';

class AuthPage extends StatefulWidget{
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>{
  
  void navigate(){
    Future.delayed(const Duration(seconds: 3),(){
      if(user == null){
        nextPageOnly(context, AuthPage);
      }
      else
      {
        //navigate user to the main activity
      }
    })

    }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:GestureDetector(
          onTap: (){},
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}