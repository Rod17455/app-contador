import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks'),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }
  
  Widget _crearBotones() {
    return Padding(
      // LE DA ESPACIOS
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _botonMax()
          ),

          SizedBox(width: 114,),

          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _botonMenos()
          ),
          SizedBox(width: 114,),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () => _botonResetear()
          ),
          SizedBox(width: 114,),


        ],
      ),
    );
  }
  
  void _botonMax() {
    // CAMBIAR EL ESTADO
    // FUNCIONES ANONIMAS: NO TIENEN NOMBRE
    setState(() {
      contador++;
    });
  }

  void _botonMenos(){
      setState(() {
      if (contador > 0) {
        contador--; // Resta 1 al número
      }
    });
  }

  void _botonResetear(){
    setState(() {
      contador = 0;
    });
  }




}