import 'package:flutter/material.dart';
import 'package:login_or_register_page/view/loginOrRegisterPage.dart';
import 'package:login_or_register_page/viewModel/authviewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MultiProvider(
          providers:[
            ChangeNotifierProvider(create: (context)=>Authviewmodel())
          ],
        child: LoginOrRegisterPage(),
          )
    );
  }
}
