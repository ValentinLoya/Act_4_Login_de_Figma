import 'package:flutter/material.dart';

void main() {
  runApp(MiPagina());
}

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita el banner de debug
      home: Scaffold(
        backgroundColor: Color(0xFFFE7C2B), // Cambia el color de fondo a FE7C2B
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo (Imagen redonda)
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // Fondo rojo para el círculo del logo
                ),
                child: Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/vale.jpg', // Asegúrate de tener la imagen en tu carpeta assets
                      width:
                          350, // Ajusta el tamaño de la imagen dentro del círculo
                      height:
                          350, // Ajusta el tamaño de la imagen dentro del círculo
                      fit: BoxFit
                          .cover, // Para que la imagen cubra todo el círculo
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color:
                      Color(0xff000000), // Cambia el color de la letra a negro
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Lógica para iniciar sesión
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Iniciar Sesion',
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          Colors.white), // Cambia el color de la letra a blanco
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  // Lógica para crear cuenta
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Crear Cuenta',
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          Colors.white), // Cambia el color de la letra a blanco
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
