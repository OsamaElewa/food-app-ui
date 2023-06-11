import 'package:first_ui/home_page.dart';
import 'package:first_ui/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            const Image(
              image:NetworkImage('https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
                  'th-fire-flame-black-background-restaurant-hotel-service-concept-'
                  'free-advertising-space_192985-1606.jpg?w=360'),
              height: 280.0,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text('SIGN UP',
                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35.0,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    cursorColor: Colors.white,
                    keyboardType:TextInputType.name,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.white),
                      ),
                      icon:Icon(Icons.account_circle_outlined,color: Colors.orange,),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 15.0,),
                  TextFormField(
                    cursorColor: Colors.white,
                    keyboardType:TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.white),
                      ),
                      icon:Icon(Icons.email,color: Colors.orange,),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 15.0,),
                  TextFormField(
                    keyboardType:TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:BorderSide(width: 2,color: Colors.white),
                      ),
                      icon:Icon(Icons.lock,color: Colors.orange,),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homescreen()));
        },
        backgroundColor: Colors.orangeAccent,
        child: const Icon(CupertinoIcons.arrow_right,color: Colors.black,),
      ),
    );
  }
}
