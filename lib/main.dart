import 'package:flutter/material.dart';

void main() => runApp(const AppTienda());

class AppTienda extends StatelessWidget {
  const AppTienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parque de Atracciones",
      home: const Ropa(),
    );
  }
}

class Ropa extends StatelessWidget {
  const Ropa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parque de atracciones Hinojos',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 126, 34, 145),
        leading: const Icon(
          Icons.park,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.confirmation_number, color: Color.fromARGB(255, 223, 91, 91)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.map, color: Color.fromARGB(255, 253, 183, 78)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
  padding: const EdgeInsets.all(16), // Margen para que no pegue a los bordes
  children: [

    // CARD 1
    Card(
      color: Colors.blue.shade50, // Fondo suave
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.person, color: Colors.blue),
        title: const Text('Mi Perfil'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Acción simple: imprime en consola
          print("Click en Perfil");
        },
      ),
    ),

    // CARD 2
    Card(
      color: Colors.green.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.attractions, color: Colors.green),
        title: const Text('Atracciones'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          print("Click en Notificaciones");
        },
      ),
    ),

    // CARD 3
    Card(
      color: Colors.orange.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.confirmation_number, color: Colors.orange),
        title: const Text('Boletos'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          print("Click en Favoritos");
        },
      ),
    ),

    // CARD 4
    Card(
      color: Colors.purple.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.group, color: Colors.purple),
        title: const Text('Empleados'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          print("Click en Configuración");
        },
      ),
    ),

  ],
)



    );
  }
}
