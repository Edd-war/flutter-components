import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 0.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
                child: _cearImagen()
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: 100,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)?null:(valor)=>setState(()=> _valorSlider = valor),
    );
  }

  Widget _cearImagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/f6/be/93/f6be93339f7cd625f2d183625621e3e1.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor)=> setState(() =>_bloquearCheck = valor!),
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor)=> setState(() =>_bloquearCheck = valor!),
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor)=> setState(() =>_bloquearCheck = valor),
    );

  }
}
