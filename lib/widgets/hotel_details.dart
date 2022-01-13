import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails(this.iconData,this.title,this.description);

  final IconData iconData;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child:  Icon(iconData,color: Colors.lightBlueAccent,),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(title,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(.5)),),
            Text(description,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black))
          ],
        )
      ],
    );
  }
}
