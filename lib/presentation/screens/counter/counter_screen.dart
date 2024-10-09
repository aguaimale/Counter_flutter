import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //aca usamos componentes con estados
  const CounterScreen(
      {super.key}); //siempre pide una key nos va a marcar el warn

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState(); //la parte de manejo de estados
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0; //estado inicial del contador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCounter <= 1 ? 'click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
