import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:store_challenge/app_module.dart';
import 'package:store_challenge/app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
