import 'home.dart';
import 'widget/button.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class segunda_via extends StatefulWidget {
  const segunda_via({super.key});

  @override
  State<segunda_via> createState() => _segunda_viaState();
}

// ignore: camel_case_types
class _segunda_viaState extends State<segunda_via> {
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
                    '2ª Via',
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
                  const Padding(padding: EdgeInsets.all(6)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        border: 10,
                        width: 150,
                        height: 46,
                        label: 'Buscar',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 209, 176, 176),
                    ),
                    child: const Text('PDF'),
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
