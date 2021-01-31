import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:manutencao_firebase/datas/equipament_data.dart';

class ManutencaoScreen extends StatefulWidget {
  final ManutencaoData manutencao;
  ManutencaoScreen(this.manutencao);
  @override
  _ManutencaoScreenState createState() => _ManutencaoScreenState(manutencao);
}

class _ManutencaoScreenState extends State<ManutencaoScreen> {
  final ManutencaoData manutencao;
  _ManutencaoScreenState(this.manutencao);
  @override
  Widget build(BuildContext context) {
    final Color pc = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(manutencao.nome),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: manutencao.image.map((url) {
                return NetworkImage(url);
              }).toList(),
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: pc,
              autoplay: false,
              boxFit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  manutencao.nome,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
                  maxLines: 3,
                ),
                Text(
                  manutencao.unidade,
                  style: TextStyle(color: pc, fontSize: 20.0),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Tensao: ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            manutencao.tensao,
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      flex: 1,
                    ),
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Corrente: ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            manutencao.corrente,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    "Problemas: ",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
