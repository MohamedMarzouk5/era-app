import 'package:advanced_app/presentation/resources/routes_manager.dart';
import 'package:advanced_app/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
// singletone احنا هنشيل الكونستركتور ده علشان نعمل
//  ميكنش كل واحد منهم مختلف عن التناي عاوزه ثابت علي مدار الابليكشن instance  علشان لما اعمل

// default contructor
  // const MyApp({super.key});

// مثال دول كده مختلفين
  // MyApp inst1 = MyApp();
  // MyApp inst2 = MyApp();
  // MyApp inst3 = MyApp();

// named constructor
  MyApp._internal();
  // sigletone or single instance
//  تني لو عاوز اشير متغير او فنكشن علي مستوي الاب بدل مقعد اعمله كذا مره sigletone استخدام ال
// shareprfernce زي ال
  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance; // factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
