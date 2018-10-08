import 'package:flutter/material.dart';
import 'TelaRelatorio.dart';

void main(){
  runApp(TelaMedicao());
}

class TelaMedicao extends StatefulWidget{
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

    //Criando componente para os checkBox
    Widget ConteudoPrincipal = new Expanded(
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
          ],
        ),
      ),
    );

    //Criando componente para os botões - Histórico e Iniciar
    Widget Botton = new Container(
      padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      height: 80.0,
      child: new ButtonTheme(
        // minWidth: 150.0,
        // height: 100.0,
        child: RaisedButton(
          elevation: 5.0,
          padding: EdgeInsets.all(10.0),
          textColor: Colors.white,
          color: Colors.red,
          onPressed: () => _gotelarelatorio(context),
          child: new Text(
            'Parar',
            style: new TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );

    //Criando componente para o corpo da tela principal
    Widget Body = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        LogoEmpresa,
        ConteudoPrincipal,
        Botton,
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
  //Criando função para chamar a Tela de configurações
  void _gotelarelatorio(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context){
        return new TelaRelatorio();    
      },
    ));
  }
}