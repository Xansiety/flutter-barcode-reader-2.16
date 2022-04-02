import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      elevation: 0,
      currentIndex: currentIndex,
      //fixedColor: Colors.brown,
      backgroundColor: Colors.blueGrey,
      selectedItemColor: Colors.yellowAccent,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
            label: 'Maps',
            tooltip: 'Escanear codigos de mapas',
            backgroundColor: Colors.blueGrey),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.qrcode_viewfinder),
            label: 'QR',
            tooltip: 'Código QR',
            // backgroundColor: Colors.lightGreen
            backgroundColor: Colors.blueGrey),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.barcode),
            label: 'Codigo de barras',
            tooltip: 'Códigos de Barra',
            // backgroundColor: Colors.brown
            backgroundColor: Colors.blueGrey),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Yo',
            tooltip: 'Yo',
            // backgroundColor: Colors.blueGrey
            backgroundColor: Colors.blueGrey)
      ],
    );
  }
}
