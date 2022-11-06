import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/FAQscreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/chooseCountryScreen.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  HelpScreen({Key? key}) : super(key: key);

  static String id = '/loginScreen';
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool isSwitch = false;
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
                    "Help",
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
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: size.width*0.25),
                  Text("START LIVE CHAT", style: const TextStyle(color: Colors.white, fontSize: 15),),
                ],
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 48),
                primary: Colors.orange
              ) ,),
            ),
            // --------------Next content "About Jumia"----------------
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Text("ABOUT JUMIA", style: TextStyle(color: Colors.grey.shade600),),
                ),
              ],
            ), 
            // ------------container for the next content----------
            Row( children:[
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Container(
                    width: size.width*0.96,
                    height: size.height*0.0590,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text("Faq", style: TextStyle(fontSize: 15),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15,),
                      onTap: (){
                        Navigator.pushNamed(context, FaqScreen.id);
                      },
                    ),
                  ),
                )
            ]),
        
        
            // --------------Next content "Settings"----------------
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:18.0, top: 10),
                  child: Text("SETTINGS", style: TextStyle(color: Colors.grey.shade600),),
                ),
              ],
            ), 
            // ------------container for the next content "3-listtiles"----------
            Row( children:[
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Container(
                    width: size.width*0.96,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children:[
                        ListTile(
                          title: Text("Push Notifications",style: TextStyle(fontSize: 14,)),
                          trailing: Switch(value: isSwitch, onChanged: ((value) {
                            setState(() {
                              isSwitch = value;
                            });
                          }),
                          activeColor: Colors.orange,
                          activeTrackColor: Colors.orange.shade100,
                          ),
                        ),
                        // ---------------the country listtile-----------
                        ListTile(
                          title: Row(
                            children: const[
                              Text("Country",style: TextStyle(fontSize: 14,)),
                              Spacer(),
                              Text("NIGERIA",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            ],
                          ),
                           trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15,),
                          onTap: (){
                            Navigator.pushNamed(context, ChooseCounstryScreen.id);
        
                            setState(() {
                              
                            });
                          },
                        ),
                        // -----------Language ListTile-------
                        
                        ListTile(
                          title: Row(
                            children: const[
                              Text("Language",style: TextStyle(fontSize: 14,)),
                              Spacer(),
                              Text("ENGLISH", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),),
                            ],
                          ),
                          
                          //  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15,),
                          
                        ),
                      ])
                  ),
                )
           
            ]),
        
             // --------------Next content "Settings"----------------
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:18.0, top: 10),
                  child: Text("APP INFO", style: TextStyle(color: Colors.grey.shade600),),
                ),
              ],
            ), 
           
            // ----------container for the next content "2-listtiles"----------
            Row( children:[
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Container(
                    width: size.width*0.96,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children:[
                        // ---------------the country listtile-----------
                        ListTile(
                          title: Row(
                            children: const[
                              Text("App Version 11.6.0",style: TextStyle(fontSize: 14,)),
                              Spacer(),
                              Text("UP TO DATE",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey)),
                            ],
                          ),
                        ),
        
                        // -----------Language ListTile-------
                        ListTile(
                          title: Row(
                            children: const[
                              Text("Cache Used: 368 kB",style: TextStyle(fontSize: 14,)),
                              Spacer(),
                              Text("CLEAR", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, ),),
                            ],
                          ),
                        ),
                      ])
                  ),
                )
           
            ])
            ]),
        ),

    );
  }

  
}
