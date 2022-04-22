import 'package:compoentesvarios/router/appRoutes.dart';
import 'package:compoentesvarios/screens/cardScreen.dart';
import 'package:compoentesvarios/widgets/appBarP.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      //home: const CardScreen(), //pagina principal
      initialRoute: AppRoutes.initialRoute, //'home',
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: appTheme.darkTheme,
    );
  }
}
