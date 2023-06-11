import 'package:first_ui/home_page.dart';
import 'package:first_ui/login_page.dart';
import 'package:first_ui/sign_up.dart';
import 'package:first_ui/starter_screen.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: starterpage(),
    );
  }
}
