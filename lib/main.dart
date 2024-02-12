import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App con Drawer'),
      ),
      body: Center(
        child: Text('Contenido de la página de inicio'),
      ),
      drawer: DrawerMenu(),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
        padding: EdgeInsets.zero,
        children: [
                    DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Contenido'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Ajustes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Más Información'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}