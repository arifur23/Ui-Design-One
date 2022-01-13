import 'package:flutter/material.dart';
import 'package:ui_design_one/widgets/categories.dart';
import 'package:ui_design_one/widgets/input_field.dart';
import 'package:ui_design_one/widgets/popular_places.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon:  Icon(Icons.menu_open_rounded,color: Colors.black,),
        ),
        backgroundColor: const Color(0xFFF8F9FA),
        actions: [
          const SizedBox(width: 30,),
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 10,
            width: 40,
            decoration:  BoxDecoration(
              color: const Color(0xFFF4FAFC),
              borderRadius: BorderRadius.circular(100)
            ),
            child: Stack(
              children:  [
                 const IconButton(
                  onPressed: null,
                  icon:  Icon(Icons.notifications_active_outlined,color: Colors.black,),
                ),
                Positioned(
                  top: 8,
                  right: 5,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFF6BBFD6)
                    ),
                    child: const Center(child:  Text('2',style: TextStyle(fontSize: 10),)),
                  ),
                )
              ],
            ),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Makes your',
                style: TextStyle(
                  color: Colors.black.withOpacity(.60),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  // letterSpacing: 1.5
                )
            ),
            const SizedBox(height: 5,),
            const Text('Travel Easy!',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                    letterSpacing: 1.5
                )
            ),
            const SizedBox(height: 10,),
            const InputField(),
            const SizedBox(height: 20,),
            const Categories(),
            const SizedBox(height: 20,),
            const PopularPlaces()
          ],
        ),
      ),
    );
  }
}
