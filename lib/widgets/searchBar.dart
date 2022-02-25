import 'package:flutter/material.dart';

class SearchBar  extends StatelessWidget {
  final String placeholder;
  SearchBar({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.only(top:20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:Color(0xFF8F8F9E),width: 2)

      ),
      padding: EdgeInsets.all(5),
      child:  TextField(
        style: TextStyle(color: Colors.white,fontSize: 15),
        decoration: InputDecoration(
            hintText:placeholder,
            hintStyle: TextStyle(color: Color(0xFF8F8F9E),fontSize: 15),
            border: InputBorder.none
        ),
      )


      ,
    );
  }
}
