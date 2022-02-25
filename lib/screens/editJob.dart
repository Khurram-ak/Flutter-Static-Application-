import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/screens/Home.dart';
import 'package:flutter_assignment_1/widgets/appButton.dart';
import 'package:flutter_assignment_1/widgets/appTextField.dart';

class EditJob extends StatelessWidget {
  const EditJob({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Container(
        padding:
            const EdgeInsets.only(top: 65, left: 27, right: 27, bottom: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home())),
                child: const Icon(
                  IconData(0xe793, fontFamily: 'MaterialIcons'),
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const Text("Edit Job",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ]),
            SizedBox(height: 15),
            AppTextField(
              placeholder: 'Flutter Developer Required ',
              height: 90,
            ),
            AppTextField(
                placeholder:
                    'Lorem ipsum dolor sit amet, consectetur .....',
                height: 320),
            Spacer(),
            AppButton(Label: "Update Job", onPress: () => Back(context))
          ],
        ),
      ),
    );
  }

  void Back(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
