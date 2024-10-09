import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  //aqui corre nuestra app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(255, 33, 72, 243),
        ),
        home: const CounterFuctionsScreen());
  }
}
