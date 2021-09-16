import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Componentes Tempo')
      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = <Widget>[];

    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
            ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item) => Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text(item + '!'),
          subtitle: Text('Cualquier cosa'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider()
      ],
    )).toList();

  }
}