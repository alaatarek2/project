import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/categories_provider.dart';
import 'package:untitled3/home_provider.dart';
import 'package:untitled3/login_provider.dart';
import 'package:untitled3/register.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
      ChangeNotifierProvider(create: (context)=> HomeProvider()),
    ChangeNotifierProvider(create: (context)=>CategoryProvider()),
    ChangeNotifierProvider(create: (context)=> Loginprovider()),



    ]

    , child:  MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

              primarySwatch: Colors.blue,

            ),
          home: const Task(),
    ));


  }
}