import 'package:flutter/material.dart';
import './routers/routers.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
      initialRoute: "/",
      // onGenerateRoute: onGenerateRoute,
      defaultTransition: Transition.rightToLeft,  //ios的动画效果，不写的话默认安卓的动画方式。统一设置默认的动画方式
      getPages:AppPage.routes,
    );
  }
}
