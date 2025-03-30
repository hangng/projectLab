import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_lab/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:project_lab/custom_components/image_constant.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationRoute extends StatelessWidget {
  const BottomNavigationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc,BottomNavigationState>(builder: (context,state){
      return    SalomonBottomBar(
        currentIndex: state.indexPage!,
        onTap: (i) => context.read<BottomNavigationBloc>().add(BottomNavPageIndex(i)),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          SalomonBottomBarItem(
            icon: SizedBox(
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                ImageConstant.imgFirebase,
              ),
            ),
            title: Text("Firebase"),
            selectedColor: Colors.blueAccent,
          ),


        ],);
    }, listener: (context,state){});
  }
}
