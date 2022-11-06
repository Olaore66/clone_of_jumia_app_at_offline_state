import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  FeedScreen({Key? key}) : super(key: key);

  static String id = '/FeedScreen';

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.black26.withOpacity(0.8),
        title: Text("Feed", style: TextStyle(fontSize: 20, 
                    fontWeight: FontWeight.bold),),
        actions:const[
         Padding(
           padding: EdgeInsets.only(right:10),
           child: SizedBox(child: Icon(Icons.shopping_cart_outlined, size: 23, color: Colors.white,)),
         )
        ]),


        // body
        body: Column(children: [
          SizedBox(height: size.height/15,),
          const Text("No connection", style: TextStyle(fontSize: 20),),
          SizedBox(height: size.height/50,),
          Icon(Icons.wifi, size: size.height/6, color: Colors.grey.withOpacity(0.5),),
          SizedBox(height: size.height/50,),
          Text("An internet error occurred, please try again", 
          style: TextStyle(color: Colors.grey.shade800,),
          ),
          SizedBox(height: size.height/30,),
          TextButton(
            onPressed: (){

          // ignore: avoid_unnecessary_containers
          }, child: Container(
            
            child: Container(
              height: size.height/20,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                
              ),
              child: const Center(
                child: Text("TRY AGAIN", style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
          ))
        ],),
    );
  }
}