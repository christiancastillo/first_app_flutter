import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class MyAppSecond extends StatelessWidget {
  String titulo = '';
  String tipo_insumo_id = "";
  String dependencia_insumo_id = "";
  List<String> tipoDeInsumo = [
    "Material Medico Gastable",
    "Medicamento",
    "Papeleria",
    "Material didactico",
    "Otros"
  ];
  List<String> procedenciaInsumo = [
    "Planeacion",
    "Almacen Estatal SSH",
    "Direccion de Primer Nivel de Atención",
    "Jurídico",
    "Patrimonio social",
    "Segundo Nivel de Atencion",
    "Hospital Niño DIF",
    "Almacen Subsecretaria de Finanzas"
  ];
  @override
  Widget build(BuildContext context) {
    titulo = "Reporte de Insumos de Valija SSH";
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: new Center(
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Text("Tipo de insumo:"),
              new DropDownField(
                  onValueChanged: (dynamic value) {
                    tipo_insumo_id = value;
                  },
                  value: tipo_insumo_id,
                  hintText: 'Selecciona el tipo de insumo',
                  labelText: '-- Tipo de insumo --',
                  items: tipoDeInsumo),
              new Text("Procedencia: "),
              new DropDownField(
                  onValueChanged: (dynamic value) {
                    dependencia_insumo_id = value;
                  },
                  value: dependencia_insumo_id,
                  hintText: "Selecciona la procedencia",
                  labelText: "-- Dependencia --",
                  items: procedenciaInsumo),
              new Text("Descripcion del insumo: "),
              new TextField(
                //obscureText: true,
                //controller: _multi
                maxLines: 5,
                decoration: new InputDecoration(
                  //border: new OutlineInputBorder(),
                  labelText: "Descripcion del insumo",
                ),
              ),
              new Text("Cantidad recibida: "),
              new TextField(
                maxLength: 4,
                expands: false,
                decoration: new InputDecoration(
                    labelText: "Cantidad recibida".toUpperCase()),
              ),
              new Row(children: <Widget>[
                new Container(
                  width: 100.0,
                  height: 50.0,
                ),
                new ElevatedButton(
                    onPressed: null, child: new Text("Guardar".toUpperCase())),
                new SizedBox(
                  width: 100.0,
                  height: 50.0,
                ),
                new ElevatedButton(onPressed: null, child: Text("BOO")
                )
              ])
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          new BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Reporte'),
      ]),
      /*child: new SizedBox(
            width: 300.0,
            height:30.0,
          )*/
    );
  }
}
