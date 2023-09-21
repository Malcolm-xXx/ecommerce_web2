import 'package:ecommerce_web2/Screens/Home/widgets/Menu.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'widgets/Sliders.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body: SingleChildScrollView(
        child:Column(
          children: [

            Menubar(),

            HeroBanner(),
          ],

        ) ,
      ),

    );
  }
}




