import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DasboardController extends GetxController {
  PageController page = PageController();
  RxInt tabIndex = 0.obs;
  RxBool isExpanded = false.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
