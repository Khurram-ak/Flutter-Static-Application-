import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/screens/editJob.dart';

class JobDetail extends StatelessWidget {
  final String title;

  const JobDetail({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 7),
        decoration: BoxDecoration(
          color: Color(0xFF201E27),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(top: 25, bottom: 25, left: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap:()=>Navigator.push(context,  MaterialPageRoute(builder: (context) =>  EditJob())),
                  child: Icon(IconData(0xe21a, fontFamily: 'MaterialIcons'),
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(IconData(0xe1b9, fontFamily: 'MaterialIcons'),
                    color: Colors.red),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ));
  }
}
