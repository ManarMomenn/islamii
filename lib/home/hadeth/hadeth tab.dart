import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/hadeth/item%20hadeth%20name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
   List<Hadeth>aHadethList=[];



  @override
  Widget build(BuildContext context) {
loadAhadethFile();
    return Column(
    children: [
    Center(child: Image.asset('assets/images/ahadeth_logo.png')),
    Divider(
    color: Theme.of(context).primaryColor,
    thickness: 3,
    ),
    Text(
      AppLocalizations.of(context)!.hadeth_name,
    style: Theme.of(context).textTheme.titleMedium,
    ),
    Divider(
    color: Theme.of(context).primaryColor,
    thickness: 3,
    ),



         aHadethList.isEmpty?
            Center(child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ))
            :
        Expanded(
        child: ListView.separated(
        separatorBuilder: ((context,index){
        return Divider(
        color: Theme.of(context).primaryColor,
        thickness: 2,
        );
        }),
        itemBuilder: (context,index){
        return ItemHadethName(hadeth: aHadethList[index],);
        },
        itemCount:aHadethList.length,
        ),
        ),


    ],
    );

  }

  void loadAhadethFile()async{
    String ahadethContent= await rootBundle.loadString('assets/file/ahadeth.txt');
   List<String>hadethList= ahadethContent.split('#\r\n');
   for(int i =0;i<hadethList.length;i++){
    List<String>hadethLine=hadethList[i].split('\n');
    String title =hadethLine[0];
    hadethLine.removeAt(0);
    Hadeth hadeth= Hadeth(title: title, content: hadethLine);
    aHadethList.add(hadeth);
    setState(() {

    });
   }
  }
}
class Hadeth{
  String title;
  List<String>content;
  Hadeth({required this.title,required this.content});
}