import 'package:flutter/material.dart';
import 'package:islamii/home/quran/sura%20details%20screen.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(content,
    style: Theme.of(context).textTheme.titleMedium,
    textAlign: TextAlign.center,);
  }
}
