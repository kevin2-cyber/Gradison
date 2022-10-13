import 'package:flutter/material.dart';
import 'app/app.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
    color: Colors.green.shade200,
    child: Center(
      child: Text(
        details.exception.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      )
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PizzaApp());

}