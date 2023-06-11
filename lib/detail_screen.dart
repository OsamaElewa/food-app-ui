import 'package:first_ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datailpage extends StatelessWidget {

  itemsmodel item;

  datailpage(this.item);


  // String desc='this is along text osama number one number one number one this is along text t'
  //     'his is along text osama number one number one number one this is along '
  //     'text this is along text osama number one number one number one this is'
  //     ' along text this is along text osama number one number one number one this is along text  '
  //     'osama number one number one number one this is along text osama numbe'
  //     'r one number one number one this is along text osama number one number one number one ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(CupertinoIcons.arrow_left,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body:
      Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25.0,),
             Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage:NetworkImage(item.itemimage),
              ),
            ),
            const SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(item.itemname,
                  style:TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold),),
                  Text('${item.itemprice}\$',
                    style:TextStyle(color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(item.itemnoun,
                    style: TextStyle(color: Colors.black12,fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 25,),
                  Text(item.itemdescription,
                    style: const TextStyle(color: Colors.black,fontSize: 10),),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0),
              child: Row(
                children: [
                  MaterialButton(
                    height: 50,
                      onPressed: ()=>print('nise'),
                    color: Colors.pinkAccent[100],
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: const [
                        Text('Add to bag',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 8,),
                        Icon(CupertinoIcons.arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.only(end: 15.0),
        child: FloatingActionButton(
          onPressed: ()=>print('good'),
          backgroundColor: Colors.pinkAccent[100],
          child:  const Icon(
            Icons.shopping_bag, color: Colors.white,
          ),

        ),
      ),
    );
  }
}
