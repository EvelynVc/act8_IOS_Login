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
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      //fillColor: Colors.amber,
                      labelText: 'Usuario',
                    ), //fin de InputDecoration
                  ), //fin de TextField 1

                  SizedBox(height: 12.0),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ), //fin de inputDecoration
                    obscureText: true,
                  ), //fin de Textfield 2

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ),
                        RaisedButton(
                          color: Colors.amber, //aqui....
                          child: Text(
                            'SIGUIENTE',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          }, //fin de onPressed
                        ), //fin de raised Button
                      ], //fin de widget[4]
                    ), //fin de fila
                  ) //fin de padding
                ], //fin de Widget[3]
              ), //fin de Column
          ], //fin de Widget[1]
        ), //fin de ListView
      ), //fin de body SaveArea
    ); //fin de Scaffold
  } //fin de Widget
} //fin de IngresoSistemaState
