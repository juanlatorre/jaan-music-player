import 'package:flutter/material.dart';
import 'package:jaan_music_player/components/album_item.dart';
import 'package:jaan_music_player/components/boton_biblioteca.dart';
import 'package:jaan_music_player/utils/indian.dart';

class Biblioteca extends StatefulWidget {
  Biblioteca({Key key}) : super(key: key);

  _BibliotecaState createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          color: indian["bluebell"],
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu");
          },
        ),
        actions: <Widget>[
          IconButton(
            color: indian["bluebell"],
            icon: Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Biblioteca",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Editar",
                    style: TextStyle(
                      fontSize: 16,
                      color: indian["bluebell"],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Divider(
                      thickness: 1.5,
                      height: 20,
                    ),
                    botonBiblioteca("Listas"),
                    Divider(
                      thickness: 1.5,
                      height: 20,
                    ),
                    botonBiblioteca("Artistas"),
                    Divider(
                      thickness: 1.5,
                      height: 20,
                    ),
                    botonBiblioteca("Álbumes"),
                    Divider(
                      thickness: 1.5,
                      height: 20,
                    ),
                    botonBiblioteca("Canciones"),
                    Divider(
                      thickness: 1.5,
                      height: 20,
                    ),
                    Text(
                      "Añadido recientemente",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          albumItem(context,
                              "https://www.warcry.es/wc-contenido/uploads/2017/05/portada-2.0.jpg"),
                          albumItem(context,
                              "https://i.pinimg.com/originals/91/5d/bc/915dbc47b7f5f2a043583e3e233d5461.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
