import 'dados.dart';
import 'falta_de_agua.dart';
import 'home.dart';
import 'ligação_nova.dart';
import 'vazamento.dart';
import 'widget/button.dart';
import 'widget/textefield.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class pageInserir extends StatelessWidget {
  int escolha;

  pageInserir(this.escolha, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: pageinserindoDados(escolha),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class pageinserindoDados extends StatefulWidget {
  int escolha;
  pageinserindoDados(this.escolha, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<pageinserindoDados> createState() => _pageinserindoDados(escolha);
}

// ignore: camel_case_types
class _pageinserindoDados extends State<pageinserindoDados> {
  int escolha;

  _pageinserindoDados(this.escolha);
  Dados dadosPessoais = Dados();

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
                  'Preencha os dados',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                AddressForm(
                  dadosPessoais.nomeController,
                  dadosPessoais.ruaController,
                  dadosPessoais.bairroController,
                  dadosPessoais.complementoController,
                  dadosPessoais.zipCodeController,
                ),
                const Padding(padding: EdgeInsets.all(8)),
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
                      onPressed: escolherPage,
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

  void escolherPage() {
    if (escolha == 1) {
    print("AQUI");

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Ligacao(),
        ),
      );
    } else if (escolha == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Vazamento(),
        ),
      );
    } else if (escolha == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Falta(),
        ),
      );
    }
  }
}
