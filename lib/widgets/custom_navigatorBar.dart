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
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
            tooltip: 'Escanear codigos de mapas'),
        BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_rounded),
            label: 'Barcode',
            tooltip: 'Códigos de Barra')
      ],
    );
  }
}
