import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_table/detailscreen.dart';
import 'package:hotel_table/widget/sliderwidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text("Holo",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black,
       
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListTile(
                  onTap: () {},
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  selectedTileColor: Colors.indigoAccent.shade100,
                  title: Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.subtitle1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                        ),
                  ),
                  subtitle: Text(
                    "A Greet welcome to you all.",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  trailing: PopUpMen(
                    menuList: const [
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.person,
                          ),
                          title: Text("My Profile"),
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.bag,
                          ),
                          title: Text("My Bag"),
                        ),
                      ),
                      PopupMenuDivider(),
                      PopupMenuItem(
                        child: Text("Settings"),
                      ),
                      PopupMenuItem(
                        child: Text("About Us"),
                      ),
                      PopupMenuDivider(),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                          ),
                          title: Text("Log Out"),
                        ),
                      ),
                    ],
                    icon: CircleAvatar(
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1644982647869-e1337f992828?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                      ),
                      child: Container(),
                    ),
                  ),
                ),
              ),Text("Offers for you",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              sliderwidget(),
             const SizedBox(
                height: 12.0,
              ),
              Text("Hotels For You",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      ),
      );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}
class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Vasanta Bhavan",
      "rating":"Rating 5",
      "images":
          "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/gaew0xqnlq7rhi91fkzv",
    },
    {
      "title": "Punjabi Dhaba",
      "rating":"Rating 4.5",
      "images":
          "https://res.cloudinary.com/purnesh/image/upload/w_540,f_auto,q_auto:eco,c_limit/bharawan-da-dhaba44378.jpg",
    },
    {
      "title": "Casa Grill",
      "rating":"Rating 4.2",
      "images":
          "https://img.freepik.com/free-photo/delicious-chicken-table_144627-8758.jpg?w=360",
    },
    {
      "title": "Briyani Hub",
      "rating":"Rating 4.8",
      "images":
          "https://biryanistic.com/wp-content/uploads/2021/05/mutton-biryani1.png",
    },
    {
      "title": "Dosa Corner",
      "rating":"Rating 4",
      "images":
          "https://media.istockphoto.com/id/1156887022/photo/cheese-masala-dosa-recipe-with-sambar-and-chutney-selective-focus.jpg?s=612x612&w=0&k=20&c=KPK_ML3oSM-rHqFqTPtOrriOVeNhZZX3OSfkuc5PRug=",
    },
    {
      "title": "Sakthi Mess",
      "rating":"Rating 4.5",
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Tamil_Nadu_Non-Vegetarian_Meals.png/1280px-Tamil_Nadu_Non-Vegetarian_Meals.png",
    },
  
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 305,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Color.fromARGB(255, 218, 214, 214),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20
                            ),
                          ),
                    ),
                   
                    Row(
                      children: [
                        Text(
                          "${gridMap.elementAt(index)['rating']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                        ),
                          IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.star,
                        color: Colors.red,
                      ),
                    ),
                    ],
                    ),
                    Center(
                      child: ElevatedButton(onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReservationPage(),));
                      }), child: Text("Book Now")),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

