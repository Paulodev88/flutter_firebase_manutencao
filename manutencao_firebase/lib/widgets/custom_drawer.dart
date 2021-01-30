import 'package:flutter/material.dart';
import 'package:manutencao_firebase/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Colors.blue[100],
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)));
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text(
                        "Manutenções \nda SCI",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple[900]),
                      ),
                    ),
                    Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Olá,",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple[900]),
                            ),
                            GestureDetector(
                              child: Text(
                                "Entre ou Cadastre-se >",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {},
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início"),
              DrawerTile(Icons.list, "Manutenções"),
              DrawerTile(Icons.search, "Busca"),
              DrawerTile(Icons.playlist_add_check, "Minhas Manutenções"),
            ],
          )
        ],
      ),
    );
  }
}
