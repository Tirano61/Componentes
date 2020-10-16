import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRouts(),
      //Esto se dispara cuando la ruta de la pagina que  se quiere ir no esta definida
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada:  ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
