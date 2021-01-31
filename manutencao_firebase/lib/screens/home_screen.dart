import 'package:flutter/material.dart';
import 'package:manutencao_firebase/tabs/home_tab.dart';
import 'package:manutencao_firebase/tabs/manutencao_tab.dart';
import 'package:manutencao_firebase/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Manutenções"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ManutencaoTab(),
        )
      ],
    );
  }
}
