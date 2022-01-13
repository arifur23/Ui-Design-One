import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_one/widgets/popular_place.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text('Popular Places',style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
             letterSpacing: .5
           ),),
           GestureDetector(
             onTap: null,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: const [
                    Text('See all',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios,size: 12,)
                 ],
               ))
         ],
        ),
        const SizedBox(height: 15,),
        Container(
          height: 240,
          width: size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: const [
              PopularPlace(),
              SizedBox(width: 20,),
              PopularPlace()
            ],
          ),
        )
      ],
    );
  }
}
