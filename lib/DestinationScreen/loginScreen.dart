import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/passwordRecovery.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static String id = '/loginScreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ]),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 5, right:5 ),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Row(children: [
                Text("Login to your account", 
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),)
              ],),
            ),
        
            SizedBox(height: 30,),
            
            Form(
              child: Column(
                children:[
                // input 1
                   Padding(
                     padding: const EdgeInsets.only(bottom:40, left: 5, right: 5),
                     child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail_outline, size: 30,),
                          
                        ),
                        
                      ),
                   ),
               
                  //----- input 2-------
                    Padding(
                      padding: const EdgeInsets.only(left:5, right: 5,),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock_open_outlined, size: 30)
                        ),
                        obscureText: true,
                      ),
                    ),
                
                // the button for this "Password Recovery"
                Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, PasswordRecoveryScreen.id);
                      setState(() {
                        
                      });
                    }, child: Text("FORGOT PASSWORD?", 
                      style: TextStyle(color: Colors.blue.shade800, 
                        fontSize: 15),)),
                  ]),
        
                  SizedBox(height: 30,),
                
                // the button for "LOGIN"
                TextButton(onPressed: (){}, 
                  child: Container(
                    width: size.width*0.98,
                    height: size.height*0.05,
                    decoration: BoxDecoration(color: Colors.orange, ),
                    child: Center(child: Text("LOGIN", 
                    style: TextStyle(color: Colors.white, fontSize: 15),))
                    ))
                ]
              ),
            ),
          // -------- the next content ----- create an account 
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("New on Jumia?", style: TextStyle(fontSize: 14, color: Colors.grey.shade600),), 
            TextButton(onPressed: 
            (){}, child: Text("CREATE AN ACCOUNT", style: TextStyle(color: Colors.blue.shade800)))
          ],),
        
          SizedBox(height: 30,),
               
          // ------------ the divider line-------------
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Container(
                width: size.width*0.40,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade400 ))
                )),
            ), 
               
            Text("OR", style: TextStyle(fontSize: 18),),
               
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Container(
                width: size.width*0.40,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade400 ))
                )),
            ),
            
          ],),
          SizedBox(height: 30,),
          // --------FACEBOOK LOGO-------- 
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.facebook),
            TextButton(onPressed: (){
        
            }, child: Text("Continue with Facebook", style: TextStyle(fontSize: 16, color: Colors.blue.shade800),))
          ],) 
          
          ],),
        ),
      ),

    );
  }
}
