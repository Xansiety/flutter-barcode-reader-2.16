import 'package:barcode_qr_reader_new_version/pages/home_page.dart';
import 'package:barcode_qr_reader_new_version/pages/mapa_page.dart';
import 'package:barcode_qr_reader_new_version/provider/ui_provider.dart';
import 'package:flutter/material.dart';
//-- si no reconoce un paquete correr flutter pub get
import 'package:provider/provider.dart';

//usamos const en las nuevas versiones de flutter siemopre y cuando el widget no sea dinamico

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lector de Código de Barras y QR',
          initialRoute: 'home',
          routes: {
            'home': (_) => const HomePage(),
            'mapa': (_) => const MapaPage()
          },
          // theme: ThemeData.dark()
          theme: ThemeData(
              primaryColor: Colors.grey,
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Colors.grey))),
    );
  }
}
