

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/quran/item%20sura%20details.dart';
import 'package:islamii/my%20theme.dart';
import 'package:islamii/providers/app%20config%20provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName ='sura details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var provider=Provider.of<AppConfigProvider>(context);
    if(verses.isEmpty){
    loadFile(args.index);}
    return Container(child: Stack(
        children: [
          provider.isDarkMode()?
          Image.asset('assets/images/main _background_dark.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          )
              :


          Image.asset('assets/images/main_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(

            appBar: AppBar(
              title: Text('${args.name}',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
              ),
            ),
            body: verses.length==0?
                Center(child: CircularProgressIndicator
                  (color: Theme.of(context).primaryColor,)):
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width*0.05,
                vertical: MediaQuery.of(context).size.height*0.05,

              ),

              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(24),
              color: MyTheme.whiteColor),
              child: ListView.builder(
                  itemBuilder:(context,index)
                  {
                return ItemSuraDetails(content: verses[index],index: index,);

              },itemCount:verses.length
              ),
            ),
          ),
        ],),
    );
  }

  void loadFile(int index)async{
   String content= await rootBundle.loadString('assets/file/${index+1}.txt');
 List<String>line= content.split('\n');
 verses=line;
 print(line);
setState(() {

});
  }
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name,required this.index});
}
