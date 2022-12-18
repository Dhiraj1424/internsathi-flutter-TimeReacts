import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider with ChangeNotifier {
  
  ThemeData _themeData;

  ThemeProvider(this._themeData);

  getTheme() => _themeData;

 setTheme(ThemeData theme)async {
    _themeData = await theme;
    notifyListeners();
  }
}