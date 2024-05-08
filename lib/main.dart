import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    routes: {
      '/dice_roller': (context) => const DiceRollerPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Dados'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 59, 42, 42),
              Color.fromARGB(255, 213, 190, 188),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pedro.jpeg', // Ruta de la imagen
                width: 150, // Ancho de la imagen
              ),
              const SizedBox(height: 70), // Espacio entre la imagen y el botón
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dice_roller');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, // Color de fondo gris
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    'Juega',
                    style: TextStyle(
                      color: Colors.white, // Color del texto blanco
                      fontSize: 24, // Tamaño del texto
                      fontStyle: FontStyle.italic, // Texto en cursiva
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiceRollerPage extends StatelessWidget {
  const DiceRollerPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hazlo girar',
          style: TextStyle(
            fontStyle: FontStyle.italic, // Texto en cursiva
            fontSize: 28, // Tamaño del texto
          ),
        ),
      ),
      body: const GradientContainer([
        Color.fromARGB(255, 213, 190, 188),
        Color.fromARGB(255, 59, 42, 42),
      ]),
    );
  }
}
