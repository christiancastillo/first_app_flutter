import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';


class MyAppSecond extends StatelessWidget {

  final String titulo = '';
  String tipo_insumo_id = "";
  String dependencia_insumo_id = "";
  List<String> tipoDeInsumo = ["Gastable", "Medicamento", "Papeleria", "Material didactico", "Otros"];
  List<String> procedenciaInsumo = ["Planeacion", "Almacen estatal", "Direccion de primer nivel de at", "Juridico", "Patrimonio social", "Segundo nivel de Atencion"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Reporte Insumos de Valija SSH")
      ),
      body: new Center(
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Text(
                "Tipo de insumo:"
              ),
              new DropDownField(
                onValueChanged: (dynamic value){
                  tipo_insumo_id = value;
                },
                value: tipo_insumo_id,
                hintText: 'Selecciona el tipo de insumo',
                labelText: '-- Tipo de insumo --',
                items: tipoDeInsumo
              ),
              new Text("Procedencia: "),
              new DropDownField(
                onValueChanged: (dynamic value){
                  dependencia_insumo_id = value;
                },
                value: dependencia_insumo_id,
                hintText: "Selecciona la procedencia",
                labelText: "-- Dependencia --",
                items: procedenciaInsumo
              ),
            ]
          )
        )
      )

    );   
  }
}