import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

void main(){
  runApp(TelaRelatorio());
}

class TelaRelatorio extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
} 

class HomePage extends State{

  @override
  Widget build(BuildContext context) {    

    /*---------------------------------------------------*/
    /*-------- CRIANDO OS COMPONENTES DO LAYOUT ---------*/
    /*---------------------------------------------------*/

    //Criando componente para a imagem da empresa
    Widget LogoEmpresa = new Container(
      height: 170.0,
      width: 170.0,
      padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: new Image.asset(
        'image/logosoluforte.jpg'
      ),
    );

    //Criando componente para o corpo da tela principal
    Widget Body = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        LogoEmpresa,
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Configurações',
        ),
      ),
      body: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Body,
      ),
    );
  }
}