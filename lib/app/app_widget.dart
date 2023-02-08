import 'package:flutter/material.dart';
import 'src/features/dashbord/presenter/page/dashbord_page.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),
      home:  DashBordPage(),
    );
  }
}