

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/hadeth/hadeth%20tab.dart';
import 'package:islamii/home/hadeth/item%20hadeth%20details.dart';
import 'package:islamii/home/hadeth/item%20hadeth%20name.dart';
import 'package:islamii/home/quran/item%20sura%20details.dart';
import 'package:islamii/my%20theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName ='Hadeth details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Container(child: Stack(
      children: [
        Image.asset('assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,

            ),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: MyTheme.whiteColor),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemHadethDetails(content:args.content[index]);
                }, itemCount: args.content.length
            ),
          ),
        ),
      ],),
    );
  }
  }
