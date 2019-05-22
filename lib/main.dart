import 'package:flutter/material.dart';

import 'fruta.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrutasApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<Fruta> frutas = [];

  @override
  void initState() {
    //frutas.add(Fruta("Naranja", "naranja.jpg", "naranja", "Muy sabrosa en jugo"));
    frutas.add(Fruta("Pera", "pera.jpg", "verde", "Sabe buena"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa 233424", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));
    frutas.add(Fruta("Manzana", "manzana.jpg", "roja", "Está envenenada"));
    frutas.add(Fruta("Fresa", "fresa.jpg", "roja", "con crema"));
    frutas.add(Fruta("Mango", "mango.jpg", "amarillo", "ya mero hay"));
    frutas.add(Fruta("Papaya", "papaya.jpg", "amarillo", "sabe de la shit"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frutas App'),
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: frutas.length,
        itemBuilder: (bc, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                      "assets/frutas/${frutas[i].imagen}",
                      fit: BoxFit.cover,
                    ),
                    title: Text(frutas[i].nombre),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: (){
                      Route ruta =  MaterialPageRoute(builder: (context) => FrutaWindow(fruta: frutas[i],));
                      Navigator.of(context).push(ruta);
                    },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FrutaWindow extends StatelessWidget {
  final Fruta fruta;

  const FrutaWindow({Key key, @required this.fruta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruta.nombre),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            "assets/frutas/${fruta.imagen}",
            fit: BoxFit.cover,
          ),
          Text("Color: ${fruta.color}"),
          Container(height: 10, width: double.infinity, color: Colors.green,),
          Text(fruta.descripcion)
        ],
      ),
    );
  }
}
