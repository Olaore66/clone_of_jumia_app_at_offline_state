import 'dart:ui';

import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/VouchersScreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/loginScreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/passwordRecovery.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  static String id = '/AccountScreen';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black26.withOpacity(0.8),
        toolbarHeight: size.height / 8,
        title: SizedBox(
          child: Column(
            children: [
              // content 1
              Row(
                children: const [
                  Text(
                    "Account",
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
              const SizedBox(height: 10),
              // content 2
              Row(
                children: [
                  Column(
                    children: const [
                      // this is another a way of writing your content
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Welcome!\n",
                            style: TextStyle(fontSize: 18,
                            )),
                        TextSpan(
                            text: "Enter your account",
                            style: TextStyle(fontSize: 13,
                            )),
                      ]))
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: Text("LOGIN"),
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(90, 48),
                            primary: Colors.orange),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      // body
      body: Scaffold(
        backgroundColor:Colors.grey.shade200,
        appBar: AppBar(
          toolbarHeight: size.height/26,
          backgroundColor: Colors.white,
          elevation: 0,
          // leading: Icon(Icons.account_balance_wallet_rounded, 
          //           color: Colors.blue.shade900,),
          titleSpacing: 2,
          title: SizedBox(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded, 
                    color: Colors.blue.shade900,),
              title: Text("Login to see your balance", 
                  style: TextStyle(color: Colors.blue.shade900, 
                  fontSize: 15)),
              onTap:() {
                
                showDialog(context: context, builder: (context)=> AlertDialog(
                  insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),//this guy is used to add padding to the DialogBox
                  
                  contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 5.0),
                  
                  content:Text("Login to see the balance available on your Account", 
                  style: TextStyle(color: Colors.black, fontSize: 16),),
                  
                  actionsPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                  actions: [
                    TextButton(
                      
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AccountScreen.id);
                        Navigator.pop(context);
                        

                    }, child: Text("ok", style: TextStyle(
                      color: Colors.orange, fontSize: 18),),
                    
                    ),
                    
                  ],
                ));                
              },
            
          )
          )
          
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [Padding(
                  padding: const EdgeInsets.only(left: 20, top: 18, bottom: 5),
                  child: Text("MY JUMIA ACCOUNT", 
                  style: TextStyle(color: Colors.grey.shade600),),
                ),
              ],

            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5 )
                ),
                child: Column(children: [

                  Card(Ic: Icons.store_mall_directory_outlined, 
                  category: "Orders"),
                  Card(Ic: Icons.forward_to_inbox, 
                  category: "Inbox"),
                  Card(Ic: Icons.rate_review_outlined, 
                  category: "Pending Reviews"),
                 
                  ListTile(
                    leading: Icon(Icons.local_activity_outlined, color: Colors.black,),
                    title: Text("Vouchers", style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios, size: 8.5, color: Colors.black,),
                    onTap: (){
                      Navigator.pushNamed(context, VouchersScreen.id);
                    },
                  ),
                  
                  Card(Ic: Icons.heart_broken, 
                  category: "Saved Items"),
                  Card(Ic: Icons.watch_later_outlined, 
                  category: "Recently Viewed"),
                  Card(Ic: Icons.youtube_searched_for_outlined, 
                  category: "Recently Searched"),
                  Card(Ic: Icons.star_outline_rounded, 
                  category: "Jumia Prime"),
                
                ],),
              ),
            ),
                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top:15, left: 15, bottom: 3),
                       child: Text("MY SETTINGS", 
                        style: TextStyle(color: Colors.grey.shade600),),
                     ),
                   ],
                 ),

                Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Column(children: [
                  CardwithoutIcons(category: "Details"),
                  CardwithoutIcons(category: "Address book"),

                  // --- change password---- list tile
                  ListTile(
                    leading: Text("Change password", style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios, size: 8.5, color: Colors.black,),
                    onTap: (){
                      Navigator.pushNamed(context, PasswordRecoveryScreen.id);
                    },
                  ),

                ],),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextButton(onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
                setState(() {
                  
                });
              }, child: Text("LOGIN", style: TextStyle(color: Colors.orange),)),
            )
          ],),
        ),
      ),
    );
  }
 
  // REUSABLE cards with Icon
  Widget Card( {required IconData Ic, required String category,}){
    return ListTile(
      leading: Icon(Ic, color: Colors.black,),
      title: Text(category, style: TextStyle(color: Colors.black),),
      trailing: Icon(Icons.arrow_forward_ios, size: 8.5, color: Colors.black,),
      onTap: (){
        // they here the will now use the logic to check if the account is
        // login ---> then direct to the page
        // else show login page
      },
    );
  }
   Widget CardwithoutIcons( {required String category,}){
    return ListTile(
      leading: Text(category, style: TextStyle(color: Colors.black),),
      trailing: Icon(Icons.arrow_forward_ios, size: 8.5, color: Colors.black,),
      onTap: (){
        // they here the will now use the logic to check if the account is
        // login ---> then direct to the page
        // else show login page
      },
    );
  }
}
