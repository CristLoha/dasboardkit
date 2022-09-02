import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rapports_controller.dart';

class RapportsView extends GetView<RapportsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RapportsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RapportsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
