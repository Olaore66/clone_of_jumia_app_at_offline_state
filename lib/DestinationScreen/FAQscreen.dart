import 'package:flutter/material.dart';


class FaqScreen extends StatefulWidget {
  FaqScreen({Key? key}) : super(key: key);

  static String id = '/FAQscreen';

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.black26.withOpacity(0.8),
        titleSpacing: size.width*0.0099,
        title: SizedBox(child: Column(
            children: [
              // content 1
              Row(children: [
                  const Text("JUMIA",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  const Spacer(),
                  const Icon(Icons.search),
                  SizedBox(width: size.width * 0.05),
                  const Icon(Icons.shopping_cart_outlined),
                ]),
            ]),
          ),
        ),

        // --------------BODY-----------
      body: SingleChildScrollView(
        child: Column( children: [
          Padding(
            padding: const EdgeInsets.only(top:50, bottom: 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sorry, we couldn't load your content.", 
                style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.warning_amber_outlined, size: size.width*0.3),
            ],
          ),
          SizedBox(height: size.height*0.075,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, child: Container(
                 decoration: BoxDecoration(
                  color: Colors.orange
                 ),
                 height:size.height*0.054, 
                 width: size.width*0.93,
                 
                child: Center(child: Text("CONTINUE SHOPPING", 
                style: TextStyle(color: Colors.white))), 
                
              ),),
            ],
          )
        ],),
      ),
    );
  }
}
