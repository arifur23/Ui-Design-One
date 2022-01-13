import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_one/widgets/hotel_details.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height * .56,
                width: size.width,
                child: Image.asset('images/venice1.jpg',fit: BoxFit.cover,)
              ),
               Positioned(
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: const Center(child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)),
                    ),
                  )
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                    ),
                    child: const Center(child: Icon(Icons.favorite,color: Colors.red,size: 18,)),
                  )
              ),
              Positioned(
                  left: 20,
                  bottom: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Italy',style: TextStyle(letterSpacing: 1 ,color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                      Row(
                        children: const [
                          Icon(Icons.location_on,color: Colors.white,),
                          Text('Venice',style: TextStyle(letterSpacing: 1 ,color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400))
                        ],
                      )
                    ],
                  )
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  height: size.height * .4,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            HotelDetails(Icons.tag,'Price','\$150'),
                            HotelDetails(Icons.timelapse,'Distance','400 KM'),
                            HotelDetails(Icons.star,'Ratings','5.0')
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Text('Description',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                         Text('In publishing and graphic design, '
                            'Lorem ipsum is a placeholder text commonly '
                            'used to demonstrate the visual form of a '
                            'document or a typeface without relying on '
                            'meaningful content.',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(.7))),
                        const SizedBox(height: 20,),
                        Container(
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 125),
                            child:  ElevatedButton(
                              style: const ButtonStyle(
                                // backgroundColor:
                              ),
                              onPressed: (){

                              },
                              child: const Text('Book Now'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
