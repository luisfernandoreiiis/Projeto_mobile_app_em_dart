import 'dart:math';
import 'package:aplicativo_san/falta_de_agua.dart';
import 'package:aplicativo_san/liga%C3%A7%C3%A3o_nova.dart';
import 'package:aplicativo_san/religa%C3%A7%C3%A3o.dart';
import 'package:aplicativo_san/segunda_via.dart';
import 'package:aplicativo_san/vazamento.dart';
import 'package:aplicativo_san/widget/button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bem-Vindo(a)!!'),
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
   // ignore: unused_field
   int _counter = 0;

  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter++;
      log('teste aqui!' as num);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Bem-Vindo!!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                      width: 180,
                      height: 180,
                      label: '2ª Via',
                      onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => segunda_via()
               ),
            );
                      }),
                  ButtonWidget(
                      width: 180,
                      height: 180,
                      label: 'Ligação Nova',
                      onPressed: () {
                      Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => Ligacao()
               ),
            );//funçao troca por navergar
                      }),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                      width: 180,
                      height: 180,
                      label: 'Vazamento',
                      onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => const Vazamento()
               ),
            );
                      }),

                  ButtonWidget(
                      width: 180,
                      height: 180,
                      label: 'Religação',
                      onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => const Religacao()
               ),
            );
                      }),
                ],
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                  width: 450,
                  height: 180,
                  label: 'Falta de Agua',
                  onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context) => Falta()
               ),
            );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
