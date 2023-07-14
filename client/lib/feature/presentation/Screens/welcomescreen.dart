import 'package:flutter/material.dart';

class WelcomScreen extends StatelessWidget {
   WelcomScreen({super.key});
List images =[
   "home.jpeg",
  "volcano.jpeg",
  "Pictures of Ethiopia to Inspire Your Travels.jpeg",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context,index){

        return Container(

width:100,
height: double.maxFinite,
decoration: BoxDecoration(

  // ignore: prefer_interpolation_to_compose_strings
  image: DecorationImage(image: AssetImage("img" +images[index]),

fit: BoxFit.cover
),

        ));
      }),
    );
  }
}