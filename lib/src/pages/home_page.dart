import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    //CON ESTE MÉTODO LA APLICACIÓN PUEDE CONGELARSE
    // menuProvider.cargarData().then((opciones) {
    //   print('Lista');
    //   print(opciones);
    // });
    // return ListView(
    //   children: _listaItems(),
    // );

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
            children: _listaItems(snapshot.data, context)
        );
      }
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    if(data!=null)
    data.forEach((opt) {
      final widgetTemp = ListTile(
        leading: getIcon(opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)
            ..add(Divider());
    });
    return opciones;
  }
}
