import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Categories',style: TextStyle(letterSpacing: .5 ,fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Category(Icons.filter),
            Category(Icons.backup),
            Category(Icons.ac_unit),
            Category(Icons.account_tree_outlined),
            Category(Icons.verified_outlined),
            Category(Icons.wifi_protected_setup_sharp),
          ],
        )
      ],
    );
  }
}


class Category extends StatelessWidget {
   final IconData iconName;
   const Category(this.iconName);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child:  IconButton(
        icon: Icon(iconName),
        onPressed: null,
      ),
    );
  }
}
