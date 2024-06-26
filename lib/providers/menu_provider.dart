import 'package:flutter/material.dart';
import 'package:shop_ui/models/menu.dart';
import 'package:shop_ui/services/menu_source.dart';

class MenuProvider with ChangeNotifier {
  List<Menu> _menus = [];
  bool _isLoading = false;

  List<Menu> get menus => _menus;
  bool get isLoading => _isLoading;

  MenuProvider() {
    fetchMenus();
  }

  Future<void> fetchMenus() async {
    _isLoading = true;
    notifyListeners();

    _menus = await MenuSource.getMenus();

    _isLoading = false;
    notifyListeners();
  }
}
