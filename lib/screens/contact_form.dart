import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  //controlador
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _numeroContaController = TextEditingController();

  get keyboardType => null;

  get raisedButtonStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastro de cliente')
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Ditgite o nome do cliente',
              ),
              style: TextStyle(
                fontSize: 19.0,
              ),
            ),
            TextField(
              controller: _numeroContaController,
              decoration: InputDecoration(
                labelText: 'Número da conta'
              ),
              style: TextStyle(
                  fontSize: 18.0),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 200.0,
                //width: double.maxFinite,
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    final String nome = _nameController.text;
                    final int? numeroConta = int.tryParse(_numeroContaController.text);

                    final Contact newContact = Contact(nome,numeroConta!);
                    Navigator.pop(context,newContact.toString());
                  },
                  child: Text('CADASTRAR'),
                ),
              ),
            )
            //keyboardType: TextInputType.number, - Dando erro
           //),
          ],
        ),
      ),
    );
  }
}
