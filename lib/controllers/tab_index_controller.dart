import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}