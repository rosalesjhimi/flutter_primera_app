import 'package:flutter/material.dart';
import 'package:flutter_primera_app/pages/pagina02.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi Applicacion"),
        ),
        body: _buildCuerpoNavegacion(context));
  }
}

Widget _buildCuerpoNavegacion(context) {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Home'),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text('Ir a la otra pagina'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Pagina02()));
        },
      ),
    ],
  ));
}

// Mostrando un menu de Login
Widget _buildCuerpoLogin() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nombre(),
        campoUsuario(),
        campoContrasena(),
        const SizedBox(
          height: 15,
        ),
        botonEntrar(),
      ],
    )),
  );
}

Widget nombre() {
  return Text(
    "Sing in",
    style: TextStyle(color: Colors.white, fontSize: 30),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget botonEntrar() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent, // background
        foregroundColor: Colors.white, // foreground
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
    onPressed: () {},
    child: const Text(
      'Ingresar',
      style: TextStyle(fontSize: 25, color: Colors.white),
    ),
  );
}

// Mostrando una listview de fotos
Widget _buildBodyContentFotos() {
  return ListView(
    children: [
      Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
      Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1701205880113-b6309a1a7afe?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
      Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
    ],
  );
}
