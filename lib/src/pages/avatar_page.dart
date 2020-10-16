import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.marketingdirecto.com/wp-content/uploads/2012/05/aladdin-customer-service.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple[200],
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://comofuncionaque.com/wp-content/uploads/2015/05/La-persona-es-un-ser-capaz-de-pensar-razonar-tener-sentimientos-y-emociones.jpg-1024x681.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
