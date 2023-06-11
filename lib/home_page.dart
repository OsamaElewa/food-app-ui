import 'package:flutter/material.dart';

import 'detail_screen.dart';

class categorymodel {
  final int cat_id;
  final String cat_name;
  final bool iscolored;

  categorymodel({
    required this.cat_name,
    required this.cat_id,
    required this.iscolored,
  });
}

class itemsmodel {
  final String itemimage;
  final int itemprice;
  final String itemname;
  final String itemnoun;
  final String itemdescription;
  final int itemcount;

  itemsmodel({
    required this.itemimage,
    required this.itemprice,
    required this.itemname,
    required this.itemnoun,
    required this.itemdescription,
    required this.itemcount,
  });
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var colord = Colors.black;
  List<categorymodel> catList = [
    categorymodel(cat_name: 'All', cat_id: 1, iscolored: true),
    categorymodel(cat_name: 'Italian', cat_id: 2, iscolored: false),
    categorymodel(cat_name: 'Asian', cat_id: 3, iscolored: false),
    categorymodel(cat_name: 'Chinese', cat_id: 4, iscolored: false),
    categorymodel(cat_name: 'African', cat_id: 5, iscolored: false),
    categorymodel(cat_name: 'Egyptian', cat_id: 6, iscolored: false),
    categorymodel(cat_name: 'European', cat_id: 7, iscolored: false),
    categorymodel(cat_name: 'European', cat_id: 8, iscolored: false),
    categorymodel(cat_name: 'European', cat_id: 9, iscolored: false),
    categorymodel(cat_name: 'European', cat_id: 10, iscolored: false),
  ];

  List<itemsmodel> itemlist = [
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
            'this is very populer item in our application this is very populer item in our application  ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
    itemsmodel(
        itemimage:
            'https://img.freepik.com/premium-photo/chef-cooking-food-pan-wi'
            'th-fire-flame-black-background-restaurant-hotel-service-concept-'
            'free-advertising-space_192985-1606.jpg?w=360',
        itemprice: 20,
        itemname: 'Vegan salad bowl',
        itemnoun: 'With red tomato',
        itemdescription:
        'this is along text osama number one number one number one this is along text t'
            'his is along text osama number one number one number one this is along '
            'text this is along text osama number one number one number one this is'
            ' along text this is along text osama number one number one number one this is along text  '
            'osama number one number one number one this is along text osama numbe'
            'r one number one number one this is along text osama number one number one number one ',
        itemcount: 420),
  ];
  int selectedcolor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Simple way to find Tasty food',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 30,
                  padding: const EdgeInsetsDirectional.only(start: 30),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, item) => buildcatItem(catList[item]),
                    separatorBuilder: (context, item) => const SizedBox(
                      width: 30.0,
                    ),
                    itemCount: catList.length,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: 15.0, start: 30),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.search,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 370.0,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, item) =>
                          builditems(itemlist[item]),
                      separatorBuilder: (context, item) => const SizedBox(
                            width: 20.0,
                          ),
                      itemCount: itemlist.length),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pinkAccent[100],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildcatItem(categorymodel model) => Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedcolor = model.cat_id;
              });
            },
            child: Text(
              model.cat_name,
              style: TextStyle(
                color: selectedcolor == model.cat_id
                    ? Colors.pink
                    : Colors.black54,
                fontWeight: selectedcolor == model.cat_id
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
        ],
      );

  Widget builditems(itemsmodel item) => GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>datailpage(item)));
    },
    child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 7),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.pink[100],
                  ),
                  height: 350,
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 95.0,
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Text(
                            '\$${item.itemprice}',
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        item.itemname,
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        item.itemnoun,
                        style:
                            const TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        item.itemdescription,
                        style: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'item${item.itemcount}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(item.itemimage),
              ),
            ],
          ),
        ),
  );
}
