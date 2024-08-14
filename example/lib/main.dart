import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCustomCard.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCustomGridCard.dart';
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
      home: MyHomePage(title: 'Fragua Demo', numCards: 6),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title, numCards});

  final String title;
  final double numCards = 0;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<IconData> icons = [
    Icons.map_outlined,
    Icons.assignment_outlined,
    Icons.person,
    Icons.message_outlined,
    Icons.book,
    Icons.flight
  ];

  final List<String> texts = [
    'Mapa',
    'Agenda',
    'Speakers',
    'Mensajes',
    'Sellos',
    'Configuración'
  ];

  final int numCards = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fgPrimaryColor,
      ),
      body: CustomCardGrid(
        cards: List.generate(numCards, (index) {
          return CustomCard(
            iconSize: 60,
            icon: icons[index], // Asigna un icono diferente
            text: texts[index], // Asigna un texto diferente
            onPressed: () {
              print('Tarjeta ${texts[index]} presionada');
            },
            cardColor: Colors.white,
            colorHovered: Colors.white10,
            iconColor: fgPrimaryColor,
            textStyle: const TextStyle(fontSize: 14.0, color: fgPrimaryColor, fontWeight: FontWeight.w600),
            elevation: 2.0,
          );
        }),
      ),
    );
  }
}