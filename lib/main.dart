import 'package:flutter/material.dart';
import 'package:flutter_red_social/pagina2.dart';

void main() {
  runApp(PantallaInicioSesion());
}

class PantallaInicioSesion extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  PantallaInicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  get emailController => null;

  get passwordController => null;

  ElevatedButton buildRaisedButton(
      {required VoidCallback onPressed, required Widget child}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red, // Color primario
      ),
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade400,
              title: const Text('SocialInk'),
            ),
            backgroundColor:
                Colors.white, // Definir color de fondo del Scaffold
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*/Image.asset(
                      '/imagenes/logo2.png', // Ruta de la imagen del logo
                      height: 200.0,
                    ),*/
                    const SizedBox(height: 20.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color.fromARGB(0, 83, 52, 52),
                          filled: true,
                          hintText: 'Correo electrónico',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        obscureText: true,
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color.fromARGB(0, 83, 52, 52),
                          filled: true,
                          hintText: 'Contraseña',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    buildRaisedButton(
                      onPressed: () {
                        /*/ Validar usuario y clave en la base de datos
                        String email = emailController.text;
                        String password = passwordController.text;
                        bool validUser = validarUsuario(email, password);

                        if (validUser) {
                          // Navegar a la pantalla de red social
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PantallaRedSocial(),
                            ),
                          );
                        } else {
                          // Mostrar mensaje de error
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: const Text(
                                    'Usuario o contraseña incorrectos'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },/ */

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PantallaRedSocial(key: null)),
                        );
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  bool validarUsuario(String email, String password) {
    // Validar usuario y clave en la base de datos (simulación)
    if (email == 'usuario@ejemplo.com' && password == 'contraseña') {
      return true;
    } else {
      return false;
    }
  }
}
