import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:spozit/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPOZIT',
       theme: ThemeData(
       brightness: Brightness.light,
       primaryColor: Colors.white,
       accentColor: Colors.black,
       primaryColorLight: Colors.grey[300],
       ),
       darkTheme: ThemeData(
       brightness: Brightness.dark,
       primaryColor: Colors.black,
       accentColor: Colors.white,
       primaryColorLight: Colors.grey[600],
       ),
       themeMode: ThemeMode.system,
       home: MyApps(),
       //TabsScreen(),
      //initialRoute: '/', // default is '/'
      //routes: {
       // '/': (ctx) => Login(),
      //  TabsScreen.routeName: (ctx) => TabsScreen(),
      //  CategoryMealsScreen.routeName: (ctx) =>
       //     CategoryMealsScreen(_availableMeals),
      //  MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
     // },
      // ignore: missing_return
      //onGenerateRoute: (settings) {
       // print(settings.arguments);
     // },
     // onUnknownRoute: (settings) {
      // return MaterialPageRoute(
      //    builder: (ctx) => CategoriesScreen(),
      //  );
     // },
    );
  }
}
