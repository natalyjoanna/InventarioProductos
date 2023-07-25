import 'package:flutter/material.dart';
import 'package:user_view/screens/purchase_screen.dart';
import 'package:user_view/screens/registro_screen.dart';
import 'package:user_view/screens/resgistro_sales.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: const Text(
          "Menú principal",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Registro'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                // Cambio de color del botón
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 72, 151)),
              ),
              // Transparencia del divider
              Divider(
                color: Colors.black.withOpacity(0),
              ),
              ElevatedButton(
                child: const Text('Ventas'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sales()),
                  );
                },
                // Cambio de color del botón
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 72, 151)),
              ),
              // Transparencia del divider
              Divider(
                color: Colors.black.withOpacity(0),
              ),
              ElevatedButton(
                child: const Text('Compras'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Purchase()),
                  );
                },
                // Cambio de color del botón
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 72, 151)),
              ),
            ],
          )),
    );
  }
}
