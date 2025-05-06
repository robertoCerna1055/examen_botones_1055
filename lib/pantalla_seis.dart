import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7271bc),
        title: const Text(
          'Pantalla 6 Cerna',
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

              // Checkbox
              Checkbox(
                value: isChecked,
                activeColor: Colors.orangeAccent,
                tristate: true,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
              ),

              const SizedBox(height: 20),

              // Botón de regresar
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
