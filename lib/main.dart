import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit/src/app/my_app.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}