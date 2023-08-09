import 'package:flutter/material.dart';
import 'package:login_screen/views/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
      title: 'Abhishek_login_Screen',
      
      
      home:  loginscreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {

  
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
      
//       body:loginscreen(),
     
//     );
//   }
// }
