

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String Label;
  final GestureTapCallback onPress;

  const AppButton({required this.Label,required this.onPress }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:Container(
              padding: EdgeInsets.all(15),
              
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(color:Colors.white),
              ),
              child: GestureDetector(
                onTap: onPress,
                 child:Text(Label,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              )

            )
        )
      ],
    );
  }
}
