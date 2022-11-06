import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  PasswordRecoveryScreen({Key? key}) : super(key: key);

  static String id = '/passwordrecovery';

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white,

      // -----APPBAR-----
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black26.withOpacity(0.8),
        title: Row(
                children: const [
                  Text(
                    "Password Recovery",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ]),
      ),
 
    // -----BODY-----
    body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
      child: Column(children: [
        // ---- the write ups ---------
        Column(children:[
            // ---- the first write up -----
            Row(
              children: [
                Text("Please type in your email", 
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16)),
              ],
            ), 
            
            // ---- the second write up -----
            Row(
              children: [
                Text("We will send you a link to change the password.", 
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16)),
              ],
            )
            ],
        ),

        // ----- 2nd content - the form ----
        SizedBox(height: size.height*0.06 ,),
        Form(child: Column(children: [
          Row(
            
            children: [
            // ignore: prefer_const_constructors
            SizedBox(
              width: size.width*0.92,
              child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "E-mail",
                    border: UnderlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                  
              ),
            )
          
        ]),
        // ---- the button that controls the form
        SizedBox(height: size.height*0.03,),
        ElevatedButton(onPressed: (){}, child: Text("SUBMIT"),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(400, 50),
          primary: Colors.orange
        ),
        )
        ]))
          
        ]),
    )
    );
    
    
  }
}