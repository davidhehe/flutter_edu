import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provide/login_inf.dart';
import './provide/detail_id.dart';
import './pages/home.dart';
import './route/route.dart';


void main() {  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => User()),
        ChangeNotifierProvider(create: (context) => Id()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'edu',
      routes: staticRoutes,
      home: homePage(),
    );
  }
}


