import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final ButtonStyle estilo = ElevatedButton.styleFrom(onSurface: Colors.blue, onPrimary: Colors.white, shape: StadiumBorder());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        // child: RaisedButton( LOS ESTILOS COMENTADOS ABAJO SÓLO FUNCIONAN PARA ESTE WIDGET DE BOTÓN EN DESUSO
        child: ElevatedButton(
          style: estilo,
          child: Text('Mostrar Alerta'),
          // color: Colors.blue,
          // textColor: Colors.white,
          // shape: StadiumBorder(),
          onPressed:() => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,        // PARA SALIR DEL DIÁLOGO PULSANDO AFUERA DONDE QUIERA
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: <Widget>[
            TextButton(
            onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar'),
            ),
            TextButton(
            onPressed: (){Navigator.of(context).pop();},
              child: Text('Ok'),
            ),
          ],
        );
      }
    );
  }
}
