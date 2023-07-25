import 'package:flutter/material.dart';
import 'package:user_view/screens/product_screen.dart';
import 'package:user_view/screens/registro_usuario.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: const Text(
          "Registro",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 139, 72, 151),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background2.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Usuario'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const User()),
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
                child: const Text('Productos'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Product()),
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
