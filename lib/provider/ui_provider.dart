//se debe instalar provider desde en pubspec
import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    notifyListeners(); //notifica de losc ambios a todos los widgets
  }
}
