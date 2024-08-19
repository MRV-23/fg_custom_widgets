import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCardSpeaker.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCustomButton.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGLoading.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGTextField.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCardView.dart';
import 'package:fragua_custom_widgets/utils/FGColors.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGMensaje.dart';



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
        colorScheme: ColorScheme.fromSeed(seedColor: FGColors.fgBackgroundColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fragua Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Click presionado'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40.0),
            FGTextField(
              label: "Username",
              icon: Icons.person,
              error: '',
              showIcon: false,
              onChanged: (value) {
                print('Entro onchanged:${value}');
              }),
            const SizedBox(height: 40.0),
            CustomButton(
              text: 'Aceptar',
              onPressed: () {
                _incrementCounter();
              },
              color: Colors.blue,
              colorHovered: Colors.blue,
              borderRadius: 16.0,
              textStyle: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16.0),
              highlightColor: Colors.lightBlue,
              width: 400,
              height: 60,
              alignment: Alignment.center,
              marginButton: const EdgeInsets.symmetric(horizontal: 0.0),
            ),
            //const SizedBox(height: 40.0),
            //const FGLoadingWidget(),
            const SizedBox(height: 40.0),
            //Fgcardview('Título', 'Subtítulo', 'Aquí estárticipar en la definición de políticas y programas en la '),
            FGMensaje(
              title: 'Haz sido invitado',
              subTitle: 'The coca-cola company ',
              description: 'The coca-cola company te ha invitado Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              icon: Icons.message_outlined,
            ),
            Fgcardspeaker(
              urlImage: 'https://images4.alphacoders.com/102/1029798.jpg',
              title: 'Taller de Tecnologias',
              hours: '10:00 am - 10:30 am',
              name: 'Martin de Jesus Rubio Vazquez',
            )


          ],
        ),
      ),
    );
  }
}
