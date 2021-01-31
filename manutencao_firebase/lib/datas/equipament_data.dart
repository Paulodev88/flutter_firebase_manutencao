import 'package:cloud_firestore/cloud_firestore.dart';

class ManutencaoData {
  String id;
  List image;
  String unidade;
  String corrente;
  String tensao;
  String nome;
  List problema;
  List solucao;
  String tag;
  String patrimonio;
  String categoria;

  ManutencaoData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    image = snapshot.data["image"];
    unidade = snapshot.data["unidade"];
    corrente = snapshot.data["corrente"];
    tensao = snapshot.data["tensao"];
    nome = snapshot.data["nome"];
    problema = snapshot.data["problema"];
    solucao = snapshot.data["solucao"];
    tag = snapshot.data["tag"];
    patrimonio = snapshot.data["patrimonio"];
  }
}
