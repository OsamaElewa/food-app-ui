import 'package:first_ui/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class starterpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const Image(
                  image:NetworkImage('https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
                      'th-fire-flame-black-background-restaurant-hotel-service-concept-'
                      'free-advertising-space_192985-1606.jpg?w=360'),
                height: 480.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 40.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text(
                    'BACKING LESSONS',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'MASTER THE ART OF BAKING',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              const SizedBox(height: 80.0,),
              MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                color: Colors.orange,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:
                Row(
                  children: const [
                    Text('START LEARNING'),
                    Icon(CupertinoIcons.arrow_right),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
