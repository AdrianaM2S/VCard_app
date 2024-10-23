import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const VCardApp());

class VCardApp extends StatelessWidget {
  const VCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V-Card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const VCardScreen(),
    );
  }
}

class VCardScreen extends StatelessWidget {
  const VCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Tarjeta Digital'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Desplazamiento de la sombra
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/profile.png'), // Imagen del perfil
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Adriana M. Marrero Sanchez',
                    style: GoogleFonts.lato(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'email@ejemplo.com',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '+1 (123) 456-7890',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'github.com/AdrianaM2S',
                    style:
                        GoogleFonts.openSans(fontSize: 16, color: Colors.blue),
                  ),
                  const SizedBox(height: 20),
                  // Código QR (puede ser una imagen estática o generada por un paquete QR)
                  Image.asset(
                    'assets/qrcode.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  // Botón de Expansión (solo como ejemplo visual)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Usuario de Github: AdrianaM2S',
                          style: GoogleFonts.openSans(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
