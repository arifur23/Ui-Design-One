import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_one/screens/place_page.dart';

class PopularPlace extends StatelessWidget {
  const PopularPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white,width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PlacePage()));
                },
                child: Container(
                  height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/venice1.jpg',
                        fit: BoxFit.cover,),
                    )
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                    ),
                    child: const Center(
                      child:  Icon(Icons.favorite,color: Colors.red,size: 15,)
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Explore Italy',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.location_on,size: 15,color: Color(0xFF99D2DF),),
                        SizedBox(width: 5,),
                        Text('Italy',style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w400,color:  Color(0xFF9912DF)),)
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 85,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF99D2DF)
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child:  Text('\$160',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
