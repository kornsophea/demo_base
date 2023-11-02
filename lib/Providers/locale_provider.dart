import 'package:flutter/material.dart';
import 'package:getx_base/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  late Locale _locale=Locale('de');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    // ignore: cast_from_null_always_fails
    _locale=Locale('de');
    notifyListeners();
  }
}
