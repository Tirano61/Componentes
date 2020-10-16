import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo1(),
          SizedBox(height: 30.0), //divisorio
          _cardTipo2(),
          SizedBox(height: 30.0), //divisorio
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.amber),
            title: Text('Soy el titulo'),
            subtitle: Text(
                'A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  final card = Container(
      child: Column(children: <Widget>[
    FadeInImage(
      image: NetworkImage(
          'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      height: 300.0,
      fit: BoxFit.cover,
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      child: Text('No tengo idea de que poner'),
    )
  ]));

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
    ),
  );
}
