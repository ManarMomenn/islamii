import 'package:flutter/material.dart';
import 'package:islamii/home/hadeth/hadeth%20details%20screen.dart';
import 'package:islamii/home/quran/sura%20details%20screen.dart';

import 'hadeth tab.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
 ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
       arguments: hadeth
        );
      },
      child: Text(hadeth.title,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,),
    );
  }
}
