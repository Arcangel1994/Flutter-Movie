import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:peliculas/src/pages/home_page.dart';
import 'package:peliculas/src/pages/pelicula.detalle.dart';

//void main() => runApp(MyApp());
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePage(),
        'detalle' : (BuildContext context) => PeliculaDetalle(),
      },
    );
  }
}