import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PantallaCinco(),
  ));
}

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff71bc77),
        title: const Text(
          'Pantalla 5 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: const Baseline(
                  baseline: 50,
                  baselineType: TextBaseline.alphabetic,
                  child: FlutterLogo(size: 50),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
