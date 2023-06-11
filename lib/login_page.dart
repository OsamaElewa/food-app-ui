import 'package:first_ui/home_page.dart';
import 'package:first_ui/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: SingleChildScrollView(
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
                    Text(
                        'SIGN IN',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70.0,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
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
                    const SizedBox(height: 30.0,),
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
              const SizedBox(height: 60.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: ()=>print('hello'),
                        icon: const Icon(Icons.facebook,color: Colors.white,),
                      ),
                      const SizedBox(width: 20.0,),
                      IconButton(
                        onPressed: ()=>print('hello'),
                        icon: const Icon(Icons.youtube_searched_for,color: Colors.white,),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 5.0),
                    child: FloatingActionButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homescreen()));
                        },
                      backgroundColor: Colors.orange,
                      mini: true,
                      child: const Icon(Icons.arrow_right_alt),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
