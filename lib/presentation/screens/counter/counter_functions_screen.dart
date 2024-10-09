import 'package:flutter/material.dart';

class CounterFuctionsScreen extends StatefulWidget {
  //aca usamos componentes con estados
  const CounterFuctionsScreen(
      {super.key}); //siempre pide una key nos va a marcar el warn

  @override
  State<CounterFuctionsScreen> createState() =>
      _CounterFuctionsScreenState(); //la parte de manejo de estados
}

class _CounterFuctionsScreenState extends State<CounterFuctionsScreen> {
  int clickCounter = 0; //estado inicial del contador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 5,
          title: const Text(
            'Contador con Flutter',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: const Color.fromARGB(255, 73, 106, 255),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              color: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(), //redondeo el button
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              child: const Icon(Icons.refresh_outlined),
            ),
            const SizedBox(
                height:
                    10), // espaciadores creo una caja para crear espacio entre los buttons

            //BUTTON WIDGET PERSONALIZADO PARA NO REPETIR CREO UNO FLOTANTE!!
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if (clickCounter <= 0) return;
                setState(() {
                  clickCounter--;
                });
              },
            ),
            const SizedBox(
                height:
                    10), // espaciadores creo una caja para crear espacio entre los buttons
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(), //redondeo el button
      onPressed: onPressed,
      backgroundColor: const Color.fromARGB(255, 73, 106, 255),

      child: Icon(icon),
    );
  }
}
