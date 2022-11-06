import 'dart:async';

import 'package:clone_of_jumia_app_at_offline_state/NavScreens/NavBase.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String id = '/welcomeScreen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

 // This function runs immediately the screen is built
  @override
  void initState() {
    Timer(const Duration(seconds: 1), (){
      Navigator.pop(context);
      Navigator.pushNamed(context, NavBase.id);
    }); 
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.orange,//jumia color
      body: Center(
        child: Image (image: AssetImage("assets/logo.png"),
                      colorBlendMode: BlendMode.plus, 
                      height: size.height/10,
                      width: size.width/4,)
                      // Image(image: AssetImage("..."))
      ),
    );
  }
}
