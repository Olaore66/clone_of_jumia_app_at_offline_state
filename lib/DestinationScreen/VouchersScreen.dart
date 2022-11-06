import 'package:flutter/material.dart';

import 'loginScreen.dart';

class VouchersScreen extends StatefulWidget {
  VouchersScreen({Key? key}) : super(key: key);

  static String id = '/VoucherScreen';

  @override
  State<VouchersScreen> createState() => _VouchersScreenState();
}

class _VouchersScreenState extends State<VouchersScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.grey.shade300,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.black26.withOpacity(0.8),
        title: Row(
                children: const [
                  Text(
                    "Vouchers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
      ),
      // -----BODY-----
      body: Column(children: [
        // ---------- the circled person---------------
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 40),
            child: Container(
              height: size.height*0.10,
              width: size.width*0.212,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(55)
              ),
              child: Icon(Icons.person, color: Colors.orange, size: 75,),
            ),
          ),
        ),
        // ----------------the text--------------
        Text("Please sign in to access this content",
              style: TextStyle(fontSize: 16, 
                    fontWeight: FontWeight.bold, ) ),
        SizedBox(height: 10,),
        Center(child: Text("If you are not registered just sign in with your email or")),
        Center(child: Text("Facebook account")),
        
        // ----------the buttons------------
        // Sign in button
        Padding(
          padding: const EdgeInsets.only(top:30, bottom: 18),
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, LoginScreen.id);
          }, child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SIGN IN", style: const TextStyle(color: Colors.white, fontSize: 15),),
                ],
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 48),
                primary: Colors.orange
              ) ,),
        ),

        // FaceBook button
         ElevatedButton(onPressed: (){}, child: Row(
              children: [
                Icon(Icons.facebook, size: 18,),
                SizedBox(width: size.width*0.16),
                Text("CONTINUE WITH FACEBOOK", 
                  style: const TextStyle(color: Colors.white, 
                    fontSize: 15, fontWeight: FontWeight.bold),),
              ],
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(380, 48),
              primary: Colors.blue.shade900
            ) ,),
      ],),
        );
  }
}