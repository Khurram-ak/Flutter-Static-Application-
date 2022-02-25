import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/screens/addJob.dart';
import 'package:flutter_assignment_1/screens/signUp.dart';
import 'package:flutter_assignment_1/widgets/searchBar.dart';
import 'package:flutter_assignment_1/widgets/jobDetails.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF1A1821),
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.only(top: 90, left: 27, right: 27),
        child: Column(
          children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              const  Text(
                  "Welcome \nKhurram Amir",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp())),
                  child:const Icon(
                    IconData(0xed0a, fontFamily: 'MaterialIcons'), color: Colors.white,size: 40,),
                )
              ],
            )),
            SearchBar(placeholder: ' Search KeyWords'),
            const SizedBox(
              height: 15,
            ),
            const JobDetail(title: "Flutter Developer Required"),
            const JobDetail(title: "ReactJs Developer Required"),
            const JobDetail(title: "React Native Developer Required"),
            const JobDetail(title: "ReactJs Developer Required"),
            const JobDetail(title: "Flutter Developer Required"),
            const JobDetail(title: "Flutter Developer Required"),
          ],
        ),
      ),
      floatingActionButton: Container(

        padding: EdgeInsets.all(8),
       child:FloatingActionButton(

        backgroundColor: Color(0xFFE5E5E5),
        onPressed:()=> addNewJob(context),
        child: const Text("+",
            style: TextStyle(

              fontSize: 45,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            )),
      ),

      )
    );
  }
    void addNewJob(context){
      Navigator.push(
        context,MaterialPageRoute(builder: (context)=>AddNewJob()
      ));
    }
}
