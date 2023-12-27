import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terminos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Terminos y condiciones",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones"),
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones"),
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones Para usar esta aplicaciones es necesario que aceptes los terminos y condiciones"),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background
                foregroundColor: Colors.white, // foreground
                padding: EdgeInsets.all(15)
              ),              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Acepto todo", style: TextStyle(fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ]),
              onPressed: () {
               // Aqui se puede guardar un registro de este celula en la base de datos firebase o cualquier otro.
               print("Acepto los terminos y condiciones.");
              },
            ),
          ],
        ),
      ),
    );
  }
}
