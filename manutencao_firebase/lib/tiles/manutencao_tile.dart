import 'package:flutter/material.dart';
import 'package:manutencao_firebase/datas/equipament_data.dart';
import 'package:manutencao_firebase/screens/manutencao_screen.dart';

class ManutencaoTile extends StatelessWidget {
  final String type;
  final ManutencaoData manutencao;
  ManutencaoTile(this.type, this.manutencao);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ManutencaoScreen(manutencao)));
      },
      child: Card(
        child: type == "grid"
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 0.8,
                    child: Image.network(manutencao.image[0], fit: BoxFit.fill),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            manutencao.nome,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12.0),
                          ),
                          Text(
                            manutencao.unidade,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            : Row(
                children: <Widget>[
                  Flexible(
                    child: Image.network(
                      manutencao.image[0],
                      fit: BoxFit.fill,
                      height: 250.0,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            manutencao.nome,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12.0),
                          ),
                          Text(
                            manutencao.unidade,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
