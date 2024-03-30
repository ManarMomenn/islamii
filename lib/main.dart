

import 'package:flutter/material.dart';
import 'package:islamii/home/hadeth/hadeth%20details%20screen.dart';
import 'package:islamii/home/home%20screen.dart';
import 'package:islamii/home/quran/sura%20details%20screen.dart';
import 'package:islamii/my%20theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/providers/app%20config%20provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main(){
  runApp(ChangeNotifierProvider(
    create: (context)=> AppConfigProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  late AppConfigProvider provider;

  @override
  Widget build(BuildContext context) {
     provider = Provider.of<AppConfigProvider>(context);
    initSharedPref();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(context) => HadethDetailsScreen(),
      },

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lightTheme,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }

 Future<void> initSharedPref() async{
   final prefs = await SharedPreferences.getInstance();
  var language= prefs.getString('language') ;
  if(language!= null){
    provider.changeLanguage(language);
  }
  var isDark= prefs.getBool('isDark');
  if( isDark == true){
      provider.changeTheme(ThemeMode.dark);
  }
  else if(isDark==false){
    provider.changeTheme(ThemeMode.light);
  }

 }
}

