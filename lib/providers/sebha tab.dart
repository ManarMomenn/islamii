import 'package:flutter/material.dart';
import 'package:islamii/my%20theme.dart';

class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  List<String>tasbehehat=[
    'سبحان الله'
    'الحمد لله'
    'لا اله الا الله'
    ' الله اكبر'
  ];
  int index=0;
  double angle=0;
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:[
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset('assets/images/head_of_sebha.png'),
          Padding(
            padding:  EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.09),
            child: GestureDetector(
              onTap: (){},
                child: Transform.rotate(
                  angle:angle,
                    child: Image.asset('assets/images/body_of_sebha.png'))
            ),
          ),
        ],
      ),
        SizedBox(
          height: 24,
        ),
        Text('عدد التسبيحات',
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
          decoration: BoxDecoration(
            color: MyTheme.primaryLight,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(20),
          child: Text('$counter',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          decoration: BoxDecoration(
            color: MyTheme.primaryLight,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(12),
          child: Text(tasbehehat[index],
            style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.center,
          ),
        )
    ],
    );
  }

  void onTap(){
    counter++;
   if(counter%33==0){
     index++;
   }

   if (counter==tasbehehat.length){
     index=0;
   }
   angle+= 360/33;
    setState(() {

    });
  }
}
