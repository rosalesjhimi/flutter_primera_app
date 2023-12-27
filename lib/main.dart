import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          title: Text("Mi Applicacion"),
        ),
        body: _buildCuerpo());
  }
}

// Mostrando una listview de fotos
Widget _buildCuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            fit: BoxFit.cover)),
    child: Center(child: Text("Hola")),
  );
}

// Mostrando una listview de fotos
Widget _buildBodyContentFotos() {
  return ListView(
    children: [
      Container(
          padding: EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
      Container(
          padding: EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1701205880113-b6309a1a7afe?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
      Container(
          padding: EdgeInsets.all(20.0),
          child: Image.network(
              "https://images.unsplash.com/photo-1682686580950-960d1d513532?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
    ],
  );
}
