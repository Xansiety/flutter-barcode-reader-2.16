import 'package:barcode_qr_reader_new_version/pages/historial_mapas.dart';
import 'package:barcode_qr_reader_new_version/provider/ui_provider.dart';
import 'package:barcode_qr_reader_new_version/widgets/custom_scanButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_navigatorBar.dart';
import 'direcciones_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text('Lector xansiety'),
          actions: const [
            IconButton(
                icon: Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                ), // color: Colors.white
                onPressed: null //(){},
                )
          ]),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //obtener el selected menu conext menuOpt
    final uiProvider = Provider.of<UiProvider>(context);

    //cambiar mostrar la pagina seleccionada
    final currenIndex = uiProvider.selectedMenuOpt;

    switch (currenIndex) {
      case 0:
        return const HistorialMapasPage();
      case 1:
        return const HistorialDireccionesPage();
      default:
        return const HistorialMapasPage();
    }
  }
}
