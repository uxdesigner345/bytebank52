import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Dashboard(),
      //Scaffold
    ); //MaterialApp
  }
}
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),

        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/1c54f7b06d7723c21afc5035bf88a5ef.png'),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: 150,
                  height: 100,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        size:28,
                      ),
                      Text(
                          'Contato',
                          style:TextStyle(
                            fontSize:25.0,
                          )
                      ),

                    ],
                  )
              ),
            )
          ],
        )
    );
  }
}

