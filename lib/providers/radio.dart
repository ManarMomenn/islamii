import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget{
  @override
  State<RadioTab> createState() => RadioTabState();
}

class RadioTabState extends State<RadioTab> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Image.asset('assets/images/image_radio.png',)
        ],

        , Text('اذاعه القرءان الكريم',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),



        SizedBox(
        height: 24,
      ),
      Container(
        child: Stack(
          children: [
            Image.asset('assets/images/image button.png'),
          ],
        ),
      ),

      SizedBox(
        height: 24,
      ),
    ),
    );
  }

}





