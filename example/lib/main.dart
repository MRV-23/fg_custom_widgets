import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCustomButton.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGLoading.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGTextField.dart';

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
            const SizedBox(height: 40.0),
            const FGLoadingWidget(),
          ],
        ),
      ),
    );
  }
}
