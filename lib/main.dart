import 'package:barcode_qr_reader_new_version/pages/home_page.dart';
import 'package:barcode_qr_reader_new_version/pages/mapa_page.dart';
import 'package:barcode_qr_reader_new_version/provider/ui_provider.dart';
import 'package:barcode_qr_reader_new_version/themes.dart';
import 'package:barcode_qr_reader_new_version/utils/UserPreferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//-- si no reconoce un paquete correr flutter pub get
import 'package:provider/provider.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

//usamos const en las nuevas versiones de flutter siemopre y cuando el widget no sea dinamico

//void main() => runApp(const MyApp());

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const userData = UserPreferences.myUser;

    return ThemeProvider(
        initTheme:
            userData.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
        child: Builder(
          builder: (context) => MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => new UiProvider()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeModelInheritedNotifier.of(context).theme,
              title: 'My app',
              initialRoute: 'home',
              routes: {
                'home': (_) => const HomePage(),
                'mapa': (_) => const MapaPage()
              },
              // theme: ThemeData.dark()
              // theme: ThemeData(
              //     primaryColor: Colors.teal,
              //     floatingActionButtonTheme:
              //         const FloatingActionButtonThemeData(
              //             backgroundColor: Colors.teal))),
            ),
          ),
        ));
  }
}
