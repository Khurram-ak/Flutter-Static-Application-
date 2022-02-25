import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/screens/signIn.dart';
import 'package:flutter_assignment_1/widgets/appButton.dart';
import 'package:flutter_assignment_1/widgets/appTextField.dart';



class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset : false,
        backgroundColor: const Color(0xFF191720),
        body:  Container(
          padding:const EdgeInsets.only(top: 110,left:27,right:27,bottom: 21),
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children:  [
              const Text("Let's sign you up",
                style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
              const SizedBox(height: 15,),
              const Text("Welcome\nJoin the community!",
                  style:TextStyle(color: Colors.white,fontSize: 30) ),
              const SizedBox(height:40),
              AppTextField(placeholder: 'Enter Name Here',height: 80),
              AppTextField(placeholder: 'Enter Email Here',height: 80),
              AppTextField(placeholder: 'Enter Password Here',height: 80),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIn()));
                },
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: const [
                    Text('Already Have An Account? ',style: TextStyle(color:Color( 0xFF8F8F9E ),fontSize: 15),),
                    Text('Sign In! ',style: TextStyle(color:Color( 0xFF8F8F9E ),fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                )
              ),
              const SizedBox(height: 12,),
              AppButton(Label: "Sign Up",onPress: onSignUp)

            ],
          ),
        ),

    );

  }
  void onSignUp(){}

}
