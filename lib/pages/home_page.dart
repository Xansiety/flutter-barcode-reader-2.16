import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:barcode_qr_reader_new_version/pages/barcode_page.dart';
import 'package:barcode_qr_reader_new_version/pages/historial_mapas.dart';
import 'package:barcode_qr_reader_new_version/pages/yo_page.dart';
import 'package:barcode_qr_reader_new_version/provider/ui_provider.dart';
import 'package:barcode_qr_reader_new_version/themes.dart';
import 'package:barcode_qr_reader_new_version/widgets/custom_scanButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_navigatorBar.dart';
import 'direcciones_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          elevation: 0,
          title: const Text('Xansiety App'),
          actions: [
            const IconButton(
                icon: Icon(
                  CupertinoIcons.delete,
                  color: Colors.white,
                ), // color: Colors.white
                onPressed: null //(){},
                ),
            ThemeSwitcher(
              builder: (context) => IconButton(
                icon: const Icon(
                  CupertinoIcons.moon,
                  color: Colors.white,
                ), // color: Colors.white
                onPressed: () {
                  final theme =
                      isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
                  final switcher = ThemeSwitcher.of(context);
                  switcher.changeTheme(theme: theme);
                },
              ),
            )
          ]),
      body: const _PageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class _PageBody extends StatelessWidget {
  const _PageBody({Key? key}) : super(key: key);
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
      case 2:
        return const BarcodePage();
      case 3:
        return const YoPage();
      default:
        return const YoPage();
    }
  }
}
