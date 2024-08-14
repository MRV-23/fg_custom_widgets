import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGDocumentViewer.dart';
import 'package:fragua_custom_widgets/FGWidgets/utils/FGColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fragua Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fragua Demo', numCards: 6),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, numCards});

  final String title;
  final double numCards = 0;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  
enum CheemsPhotos { 
  cheemsVaquero, 
  cheemsDeChill
}

class _MyHomePageState extends State<MyHomePage> {

  final String filePathPDF = "assets/el_principito.pdf";
  final bool isPDF = false;

  final List<String> cheemsPhotos = [
    "assets/cheems_vaquero.jpg",
    "assets/cheems_de_chill.png"
  ];
  final CheemsPhotos numImage = CheemsPhotos.cheemsDeChill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fgPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Expanded(
          child:
            Center(
              child:
                DocumentViewer(
                  size: const Size(1000, 1000),
                  filePath: isPDF ? filePathPDF : cheemsPhotos[numImage.index],  // Ruta de la imagen o PDF
                  isPDF: isPDF,  // Cambia a true si es un PDF
                  margin: const EdgeInsets.all(0.0),
                ),
            ),
        ),
      ),
    );
  }
}