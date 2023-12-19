import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  // ignore: unused_field
  final TextEditingController nomeController;
  // ignore: unused_field
  final TextEditingController ruaController;
  // ignore: unused_field
  final TextEditingController bairroController;
  // ignore: unused_field
  final TextEditingController complementoController;
  final TextEditingController zipCodeController;

  const AddressForm(this.nomeController, this.ruaController, this.bairroController, this.complementoController, this.zipCodeController, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: widget.nomeController,
          decoration: const InputDecoration(labelText: 'Nome Completo'),
          
         ),
        TextFormField(
          controller: widget.ruaController,
          decoration: const InputDecoration(labelText: 'Rua'),
        ),
        TextFormField(
          controller: widget.bairroController,
          decoration: const InputDecoration(labelText: 'Bairro'),
        ),
        TextFormField(
          controller: widget.complementoController,
          decoration: const InputDecoration(labelText: 'Complemento'),
        ),
        TextFormField(
          controller: widget.zipCodeController,
          decoration: const InputDecoration(labelText: 'CEP'),
          keyboardType: TextInputType.number,
        ),
        
      ],
    );
  }
  }