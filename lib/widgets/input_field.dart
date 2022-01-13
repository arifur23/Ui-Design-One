import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)
          ),
          hintText: 'Enter a search term',
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const IconButton(
            icon:  Icon(Icons.search_rounded,size: 25,),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
