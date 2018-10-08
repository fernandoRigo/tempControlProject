import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

void main(){
  runApp(TelaCadastro());
}

class TelaCadastro extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
} 

class HomePage extends State{
  @override
  Widget build(BuildContext context) {    
    //Criando Menu de icons da appbar
    //Configurações e cadastro de novos clientes


    /*---------------------------------------------------*/
    /*-------- CRIANDO OS COMPONENTES DO LAYOUT ---------*/
    /*---------------------------------------------------*/

    //Criando componente dos editText e dos labels
    Widget ConteudoPrincipal = new Expanded(
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Text(
              'Nome da Empresa/Cliente',
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
            new TextField(
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                color: Colors.black,
              ),  
            ),
            new Text(
              'Usuário',
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
            new TextField(
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                color: Colors.black,
              ),  
            ),
            new Text(
              'Email',
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
            new TextField(
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                color: Colors.black,
              ),  
            ),           
            new Text(
              'Número do Pedido',
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
            new TextField(
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                color: Colors.black,
              ),  
            ),
          ],
        ),
      ),
    );
 
    //Criando componente para os botões - Histórico e Iniciar
    Widget Botton = new Container(
      padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      height: 80.0,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new ButtonTheme(
            minWidth: 160.0,
            height: 100.0,
            child: RaisedButton(
              elevation: 5.0,
              padding: EdgeInsets.all(10.0),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () => _gotelaprincipal(context),
              child: new Text(
                'Cancelar',
                style: new TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),

          new ButtonTheme(
            minWidth: 160.0,
            height: 100.0,
            child: RaisedButton(
              elevation: 5.0,
              padding: EdgeInsets.all(10.0),
              textColor: Colors.white,
              color: Colors.green,
              // onPressed: () => GoTela02(context),
              child: new Text(
                'Salvar',
                style: new TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    //Criando componente para o corpo da tela principal
    Widget Body = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ConteudoPrincipal,
        Botton,
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Cadastro',
        ),
      ),
      body: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Body,
      ),
    );
  }
  //Criando função para chamar a Tela de configurações
  void _gotelaprincipal(BuildContext context){
    Navigator.of(context).pop(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context){
        return new TelaPrincipal();    
      },
    ));
  }
}