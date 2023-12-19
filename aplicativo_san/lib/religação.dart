import 'dart:math';
import 'home.dart';
import 'widget/button.dart';
import 'package:flutter/material.dart';

class Religacao extends StatelessWidget {
  const Religacao({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'religacao',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ReligacaoPage(title: 'Religação'),
    );
  }
}

class ReligacaoPage extends StatefulWidget {
  const ReligacaoPage({super.key, required this.title});

  final String title;

  @override
  State<ReligacaoPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ReligacaoPage> {
  
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(8)),
                  const Text(
                    'Religação',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 141, 140, 140),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 209, 176, 176),
                    ),
                    child: const Text('DADOS'),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        border: 10,
                        width: 150,
                        height: 46,
                        label: 'ok',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()),
                          );
                        },
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        border: 10,
                        width: 150,
                        height: 46,
                        label: 'Menu',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()),
                          );
                        },
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

//

}

