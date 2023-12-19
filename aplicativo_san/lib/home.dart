import 'dart:math';
import 'falta_de_agua.dart';
import 'ligação_nova.dart';
import 'pageinserir.dart';
import 'religação.dart';
import 'segunda_via.dart';
import 'vazamento.dart';
import 'widget/button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Bem-Vindo(a)!!'),
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

  double dimensaoTelaWidth() {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width.toDouble();
  }

  double dimensaoTelaHeigth() {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.height.toDouble();
  }

  double calcularDimensaoWidth() {
    var metadeDaTela = dimensaoTelaWidth() / 2.0;
    return metadeDaTela - 20;
  }

  double calcularDimensaoHeigth() {
    var tamanhoDaAltura = dimensaoTelaHeigth() / 5.0;
    return tamanhoDaAltura;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          
          child: Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 22, top: 24, bottom: 25),
                  child: Row(
                    children: [
                      Text(
                        'Bem-Vindo!!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      width: calcularDimensaoWidth(),
                      height: calcularDimensaoWidth(),
                      label: '2ª Via',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const segunda_via()),
                        );
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(6)),
                    ButtonWidget(
                        width: calcularDimensaoWidth(),
                        height: calcularDimensaoWidth(),
                        label: 'Ligação Nova',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pageInserir(1)),
                          ); //funçao troca por navergar
                        }),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                        width: calcularDimensaoWidth(),
                        height: calcularDimensaoWidth(),
                        label: 'Vazamento',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pageInserir(2)),
                          );
                        }),
                    const Padding(padding: EdgeInsets.all(6)),
                    ButtonWidget(
                        width: calcularDimensaoWidth(),
                        height: calcularDimensaoWidth(),
                        label: 'Religação',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Religacao()),
                          );
                        }),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(8)),
                ButtonWidget(
                    width: double.infinity,
                    height: calcularDimensaoWidth() / 2.0,
                    label: 'Falta de Agua',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pageInserir(3)),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
