import 'package:flutter/material.dart';
import 'package:user_view/screens/menu_screen.dart';
import 'package:user_view/screens/registro_usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 139, 72, 151),
        title: const Text(
          "Inicio de sesión",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/usuario.png',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // Field para el Nombre de Usuario
                  Container(
                    height: 70,
                    width: 250,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      cursorColor: const Color.fromARGB(255, 139, 72, 151),
                      decoration: const InputDecoration(
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 139, 72, 151)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 139, 72, 151),
                                  width: 2.0)),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 139, 72, 151),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 215, 160, 224))),
                          labelText: 'Nombre de usuario'),
                      onChanged: (value) {
                        setState(() {
                          _username = value.trim();
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Introduce un nombre';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  // Field para Contraseña
                  Container(
                    //alignment: const Alignment(50, 100),
                    height: 70,
                    width: 250,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      cursorColor: const Color.fromARGB(255, 139, 72, 151),
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 139, 72, 151)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 139, 72, 151),
                                  width: 2.0)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 139, 72, 151),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 215, 160, 224))),
                          labelText: 'Contraseña'),
                      onChanged: (value) {
                        setState(() {
                          _password = value.trim();
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Introduce un contraseña';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  Container(
                    height: 65,
                    width: 200,
                    padding: const EdgeInsets.only(top: 25.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 139, 72, 151),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Menu()),
                          );
                        }

                        /*if (_username.isEmpty || _password.isEmpty) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Campos vacios"),
                                  content: const Text(
                                      "Es necesario completar todos los campos."),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Menu()),
                          );
                        }*/
                      },
                      child: const Text(
                        'Iniciar sesión',
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),

                  Container(
                    height: 40,
                    width: 200,
                    padding: const EdgeInsets.only(top: 1.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 139, 72, 151),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const User()),
                        );
                      },
                      child: const Text(
                        'Registrarse',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
