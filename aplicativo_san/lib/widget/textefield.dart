import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  AddressForm(SizedBox sizedBox);

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  // ignore: unused_field
  final TextEditingController _nomeController = TextEditingController();
  // ignore: unused_field
  final TextEditingController _ruaController = TextEditingController();
  // ignore: unused_field
  final TextEditingController _bairroController = TextEditingController();
  // ignore: unused_field
  final TextEditingController _complementoController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _nomeController,
            decoration: const InputDecoration(labelText: 'Nome Completo'),
            
           ),
          TextFormField(
            controller: _ruaController,
            decoration: const InputDecoration(labelText: 'Rua'),
          ),
          TextFormField(
            controller: _bairroController,
            decoration: const InputDecoration(labelText: 'Bairro'),
          ),
          TextFormField(
            controller: _complementoController,
            decoration: const InputDecoration(labelText: 'Complemento'),
          ),
          TextFormField(
            controller: _zipCodeController,
            decoration: const InputDecoration(labelText: 'CEP'),
            keyboardType: TextInputType.number,
          ),
          
        ],
      ),
    );
  }
  }