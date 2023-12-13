import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/firebase_options.dart';
import 'package:flutter_application_4/screen/chatpage.dart';
import 'package:flutter_application_4/screen/forgotpassword.dart';
import 'package:flutter_application_4/screen/home.dart';
import 'package:flutter_application_4/screen/signin.dart';
import 'package:flutter_application_4/screen/signup.dart';
import 'package:flutter_application_4/service/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
        home: FutureBuilder(
            future: AuthMethods().getcurrentUser(),
            builder: (context, AsyncSnapshot<dynamic> snapshot){
              if(snapshot.hasData){
                return SignUp();
              }else{
                return SignUp();
              }
            })
    );
  }
}
