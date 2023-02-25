import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//import 'package:madways/screens/components/my_bottom_nav_bar.dart';

import 'package:madways/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: buildAppBar(),
        body: Body(),
      ),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     elevation: 0,
  //     leading: IconButton(
  //       icon: Icon(Icons.menu),
  //       onPressed: () {},
  //     ),
  //   );
  // }
}
