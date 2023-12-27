import 'package:flutter/material.dart';

class MiApplic extends StatefulWidget {
  const MiApplic({super.key});

  @override
  State<MiApplic> createState() => _MiApplicState();
}

class _MiApplicState extends State<MiApplic> {

  bool suscrito = false;


  void _cambiaestado() {
    setState(() {
      suscrito = !suscrito;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildCuepoAlertDialog(context);
  }

// Alert Dialog
  Widget _buildCuepoAlertDialog(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 199, 15, 15), // background
              foregroundColor: Color.fromARGB(255, 245, 237, 237), // foreground
            ),
            child: const Text(
              'Suscribirme al canal',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => _mostrarAlerta(context),
          ),
          const SizedBox(width: 0.0, height: 100.0),
          Text(
            suscrito ? "Suscrito" : "No Suscrito",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible:
          false, //Para que no se cierre el dialogo cuando se da click fuera
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(  suscrito ? "Cancelar suscripcion":'Suscribirse'),
          content: Text(
           suscrito ? "Quiere cancelar suscripcion?":'¿Estas seguro que quieres suscribirte?',
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancelar'),
              onPressed: () {
                print("No");
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Si quiero.'),
              onPressed: () {
                print("sss");
                _cambiaestado();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: MiApplic(),
        ),
      ),
    ),
  );
}
