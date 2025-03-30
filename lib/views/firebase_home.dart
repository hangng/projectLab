import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_lab/custom_components/color_constant.dart';
import 'package:project_lab/custom_components/image_constant.dart';
import 'package:project_lab/views/components/internet_connection_dialog.dart';

class FirebaseHome extends StatelessWidget {
  const FirebaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ColorConstant.firebaseBarOrange, Colors.orange, ColorConstant.firebaseBarRed]),
          ),
          child: SizedBox(
            child: SvgPicture.asset(
              width: 200,
              height: MediaQuery.sizeOf(context).height * 0.06,
              ImageConstant.imgFirebaseTitle,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){

              CustomDialog(title: 'testing', content: Container(),positiveButtonText: "positive",onPositiveButtonPressed:(){} ,negativeButtonText: "negative",onNegativeButtonPressed: (){Navigator.of(context).pop();},);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [ColorConstant.firebaseBarOrange, Colors.orange, ColorConstant.firebaseBarRed]),
              ),
              child: SizedBox(
                child: SvgPicture.asset(
                  width: 200,
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  ImageConstant.imgFirebaseTitle,
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
