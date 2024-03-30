import 'package:flutter/material.dart';
import 'package:islamii/home/quran/sura%20details%20screen.dart';
import 'package:islamii/my%20theme.dart';
import 'package:provider/provider.dart';

import '../../providers/app config provider.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;
  ItemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        arguments: SuraDetailsArgs(
            name: name,
            index:index ));
      },
      child: Text(name,
      style:provider.isDarkMode()?
      Theme.of(context).textTheme.titleMedium!.copyWith(
        color: MyTheme.whiteColor
      )
          :
      Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,),
    );
  }
}
