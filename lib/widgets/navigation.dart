import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_one/screens/home_page.dart';

class NavigationPractise extends StatefulWidget {
  const NavigationPractise({Key? key}) : super(key: key);

  @override
  _NavigationPractiseState createState() => _NavigationPractiseState();
}

enum BottomBarIcon{
  home,
  setting,
  favorite,
  cart
}

class _NavigationPractiseState extends State<NavigationPractise> {
  BottomBarIcon bottomBarIcon = BottomBarIcon.home;
  List<Widget> displayItems = const [
    HomePage(),
    Center(child: Text('Settings')),
    Center(child: Text('Favorite')),
    Center(child: Text('Cart')),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: displayItems[selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        decoration:  BoxDecoration(
          color:  Colors.white,
          borderRadius:  BorderRadius.circular(30),
          // boxShadow: <BoxShadow>
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  print('Tapped');
                  setState(() {
                    bottomBarIcon = BottomBarIcon.home;
                    selectedIndex = 0;
                  });
                },
                child: bottomBarIcon == BottomBarIcon.home ? Container(
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.home,color: Color(0xff73C3D9)),
                        SizedBox(width: 7,),
                        Text('Home',style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ) : const Icon(Icons.home)
              ),
              GestureDetector(
                  onTap: (){
                    print('Tapped');
                    setState(() {
                      bottomBarIcon = BottomBarIcon.setting;
                      selectedIndex = 1;
                    });
                  },
                  child: bottomBarIcon == BottomBarIcon.setting ? Container(
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.settings,color: Color(0xff73C3D9)),
                          SizedBox(width: 7,),
                          Text('Settings',style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ) : const Icon(Icons.settings)
              ),
              GestureDetector(
                  onTap: (){
                    print('Tapped');
                    setState(() {
                      bottomBarIcon = BottomBarIcon.favorite;
                      selectedIndex = 2;
                    });
                  },
                  child: bottomBarIcon == BottomBarIcon.favorite ? Container(
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.favorite_outline,color: Color(0xff73C3D9)),
                          SizedBox(width: 7,),
                          Text('Favorite',style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ) : const Icon(Icons.favorite)
              ),
              GestureDetector(
                  onTap: (){
                    print('Tapped');
                    setState(() {
                      bottomBarIcon = BottomBarIcon.cart;
                      selectedIndex = 3;
                    });
                  },
                  child: bottomBarIcon == BottomBarIcon.cart ? Container(
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Color(0xff73C3D9),),
                          SizedBox(width: 7,),
                          Text('Cart',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ) : const Icon(Icons.shopping_cart)
              )
            ],
          ),
        ),
      )
    );
  }
}
