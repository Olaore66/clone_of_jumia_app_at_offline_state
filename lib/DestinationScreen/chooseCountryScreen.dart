import 'package:flutter/material.dart';

class ChooseCounstryScreen extends StatefulWidget {
  ChooseCounstryScreen({Key? key}) : super(key: key);

  static String id = '/chooseCountry';
  @override
  State<ChooseCounstryScreen> createState() => _ChooseCounstryScreenState();
}

class _ChooseCounstryScreenState extends State<ChooseCounstryScreen> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:Colors.grey.shade300,
        appBar:AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close, color: Colors.black,)),
          title: Text("Choose Country", 
            style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold,
              color: Colors.black)
          ),),

        // --------BODY-------
        // ----------container that the house the languages----------
      body:
          SingleChildScrollView(
            child: Column( children:[
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
                        
                        Radiobutton("Algeria", "algeria"),
                        Radiobutton("COte d'ivore", "cOte d'ivore"),
                        Radiobutton("Egypt", "egypt"),
                        Radiobutton("Ghana", "ghana"),
                        Radiobutton("Kenya", "kenya"),
                        Radiobutton("Maroc", "maroc"),
                        Radiobutton("Nigeria", "nigeria"),
                        Radiobutton("Senegal", "senegal"),
                        Radiobutton("SouthAfrica", "south Africa"),
                        Radiobutton("Tunisia", "tunisia"),
                        Radiobutton("Uganda", "uganda"),
                        
                  ])
                  ),
                )
                   
            ]),
          )
          ),
    );
  }
// REUSABLE WIDGET 
String country = "nigeria";
Widget Radiobutton(String Country, String VALUE,){
  
  return RadioListTile(
    
    contentPadding: EdgeInsets.symmetric(horizontal: 2.0,),
    title: Row(children: [
    Text(Country),
    Spacer(),
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Icon(Icons.shopping_cart_checkout, color: Colors.grey, size: 13,),
        ),
      ],
    )
    ],),
    value: VALUE,
    groupValue: country, 
    activeColor: Colors.orange,
    onChanged: (value){
      setState(() {
        country = value.toString();
      });
    });

}
}
