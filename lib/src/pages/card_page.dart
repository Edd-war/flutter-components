import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                  onPressed: (){},
                  child: Text('Cancelar')
              ),
              TextButton(
                  onPressed: (){},
                  child: Text('Ok')
              ),

            ],
          )
        ],
      ),
    );
  }
}
