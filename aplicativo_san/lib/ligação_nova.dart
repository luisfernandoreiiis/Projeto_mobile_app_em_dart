import 'home.dart';
import 'widget/button.dart';
import 'package:flutter/material.dart';

class Ligacao extends StatelessWidget {
  const Ligacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Ligacao Nova',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: LigacaoPage(),
    );
  }
}

class LigacaoPage extends StatefulWidget {
  LigacaoPage({super.key});

  @override
  State<LigacaoPage> createState() => _LigacaoPageState();
}

class _LigacaoPageState extends State<LigacaoPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.all(8)),
                const Text(
                  'Ligação Nova',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(14)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    ButtonWidget(
                      border: 10,
                      width: 150,
                      height: 46,
                      label: 'Ok',
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
    );
  }
}
