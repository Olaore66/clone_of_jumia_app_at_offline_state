import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/FAQscreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/VouchersScreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/chooseCountryScreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/loginScreen.dart';
import 'package:clone_of_jumia_app_at_offline_state/DestinationScreen/passwordRecovery.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Account.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Categories.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Feed.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Help.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/NavBase.dart';
import 'package:clone_of_jumia_app_at_offline_state/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  
  runApp(const JumiaClone());
}

class JumiaClone extends StatelessWidget {
  const JumiaClone({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
    return MaterialApp(
      title: 'Flutter Demo',
      
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => const WelcomeScreen(),
        // The nav--pages
        NavBase.id:(context) => NavBase(),
        CategoriesScreen.id:(context) => CategoriesScreen(),
        FeedScreen.id:(context) => FeedScreen(),
        AccountScreen.id:(context) => AccountScreen(),
        HelpScreen.id:(context) => HelpScreen(),
        // The destination pages
        FaqScreen.id:(context) => FaqScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        ChooseCounstryScreen.id:(context) => ChooseCounstryScreen(),
        VouchersScreen.id:(context) => VouchersScreen(),
        PasswordRecoveryScreen.id:(context) => PasswordRecoveryScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

