import 'package:aplicativo_san/home.dart';
import 'package:aplicativo_san/widget/button.dart';
import 'package:aplicativo_san/widget/textefield.dart';
import 'package:flutter/material.dart';

class Vazamento extends StatelessWidget {
  const Vazamento({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vazamento',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const VazamentoPage(title: 'Vazamento'),
    );
  }
}

class VazamentoPage extends StatefulWidget {
  const VazamentoPage({super.key, required this.title});

  final String title;

  @override
  State<VazamentoPage> createState() => _VazamentoPageState();
}

class _VazamentoPageState extends State<VazamentoPage> {


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
                'Vazamento',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              AddressForm( 
                    const SizedBox(height: 20)),

              const SizedBox(height: 40),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 60),
                  ButtonWidget(
                      width:400, 
                      height: 100,
                     label: 'ok',
                      onPressed: () {
                        
                      }
                     ),
                ],
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                  width: 400,
                  height: 100,
                  label: 'Menu',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
