import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio de Sesion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), // fin de theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), //fin de darkTheme
      home: IngresoSistema(),
    ); //fin de MaterialApp
  } //fin de Widget {}
} //fin de clase LoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin de IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ), //fin de Icon
          onPressed: () {
            print('Menu button');
          }, //fin de onPressed
        ), //fin de IconButton
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
        title: Text('Iniciar Sesion'),
      ), //fin de AppBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/fpa14.jpg'),
                SizedBox(height: 16.0),
              ], //fin de Widget[2]
            ), //fin de column
            if (!acceso) //{...........
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Username',
                    ), //fin de InputDecoration
                  ), //fin de TextField
                ], //fin de Widget[3]
              ), //fin de Column
            // } //verdadero..........
            // else{} //falso......................
          ], //fin de Widget[1]
        ), //fin de ListView
      ), //fin de body SaveArea
    ); //fin de Scaffold
  } //fin de Widget
} //fin de IngresoSistemaState
