import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContatoList extends StatelessWidget {
  const ContatoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contato',
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: ListTile(
            title: Text('Sandro Gomes',
                style: TextStyle(
                  fontSize: 24.0,
                )),
            subtitle: Text(
              '1999',
              style: TextStyle(fontSize: 20.0),
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(newContact),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
