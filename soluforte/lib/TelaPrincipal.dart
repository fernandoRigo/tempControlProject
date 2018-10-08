import 'package:flutter/material.dart';
import 'TelaCadastro.dart';
import 'TelaConfiguracoes.dart';
import 'TelaMedicao.dart';

void main(){
  runApp(TelaPrincipal());
}

class TelaPrincipal extends StatefulWidget{
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
    List<Widget> Menu = <Widget>[
      new IconButton(
        icon: new Icon(Icons.add_circle),
        tooltip: 'Cadastro Cliente',
        onPressed: () => _gotelacadastro(context),
      ),
      new IconButton(
        icon: new Icon(Icons.build),
        tooltip: 'Configurações',
        onPressed: () => _gotelaconfiguracoes(context),
      )
    ];

    /*---------------------------------------------------*/
    /*-------- CRIANDO OS COMPONENTES DO LAYOUT ---------*/
    /*---------------------------------------------------*/
    //Criando componente para a imagem da empresa
    Widget LogoEmpresa = new Container(
      height: 170.0,
      width: 170.0,
      padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: new Image.asset(
        'image/logosoluforte.jpg'
      ),
    );

    //Criando componente para o informativo do aplicativo
    Widget Subtitulo = new Container(
      padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: new Center(
        child: new Text(
          'Monitoramento de temperatura para bolsas térmicas da empresa Soluforte',
          style: new TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    //Criando componente para o conteudo principal
    Widget MiddleSection = new Expanded(
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Text(
              'Cliente:',
              style: new TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18.0,
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
              // onPressed: () => GoTela03(context),
              child: new Text(
                'Histórico',
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
              onPressed: () => _gotelamedicao(context),
              child: new Text(
                'Iniciar',
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
        LogoEmpresa,
        Subtitulo,
        MiddleSection,
        Botton,
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Monitoramento Soluforte',
        ),
        actions: Menu,
      ),
      body: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Body,
      ),
    );
  }
  //Criando função para chamar a tela de cadastro de clientes
  void _gotelacadastro(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context){
        return new TelaCadastro();    
      },
    ));
  }

  //Criando função para chamar a Tela de configurações
  void _gotelaconfiguracoes(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context){
        return new TelaConfiguracoes();    
      },
    ));
  }

  //Criando função para chamar a Tela de medições
  void _gotelamedicao(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context){
        return new TelaMedicao();    
      },
    ));
  }
}