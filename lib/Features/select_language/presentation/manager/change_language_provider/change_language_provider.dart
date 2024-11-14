import 'package:flutter/material.dart';
import '../../../../../core/database/cache_helper.dart';
import '../../../../../core/services/service_locator.dart';
import 'change_language_state.dart';

class ChangeLanguageProvider extends ChangeNotifier  {
  String lang = 'ar';
  ChangeLanguageState _state = ChangeLanguageInitial();

  ChangeLanguageState get state => _state;

  Future<void> changeLang(String codeLang) async {
    _state = ChangeLangLoading();
    notifyListeners();

    lang = codeLang;
    await getIt<CacheHelper>().cacheLanguage(codeLang);

    _state = ChangeLangSuccess();
    notifyListeners();
  }

  void getCachedLang() {
    final cachedLanguage = getIt<CacheHelper>().getCachedLanguage();
    lang = cachedLanguage;
    _state = ChangeLangSuccess();
    notifyListeners();
  }
}
