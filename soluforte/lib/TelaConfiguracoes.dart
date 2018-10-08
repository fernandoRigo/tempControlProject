import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

void main(){
  runApp(TelaConfiguracoes());
}

class TelaConfiguracoes extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
} 

class HomePage extends State{

  //Variaveis
  bool _cadastrocliente = false;
  bool _envioemail = false;
  bool _modoviagem = false;

  @override
  Widget build(BuildContext context) {    
    //Criando Menu de icons da appbar
    //Configurações e cadastro de novos clientes

    /*---------------------------------------------------*/
    /*-------- CRIANDO OS COMPONENTES DO LAYOUT ---------*/
    /*---------------------------------------------------*/

    //Criando componente para os checkBox
    Widget ConteudoPrincipal = new Expanded(
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Checkbox(
                  activeColor: Colors.green,
                  onChanged: (bool resposta){
                    setState(() {
                      _cadastrocliente = resposta;                  
                    });
                  },
                  value: _cadastrocliente,
                ),
                new Text(
                  'Habilitar cadastro de clientes',
                  style: new TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22.0,
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Checkbox(
                  activeColor: Colors.green,
                  onChanged: (bool resposta){
                    setState(() {
                      _envioemail = resposta;                  
                    });
                  },
                  value: _envioemail,
                ),
                new Text(
                  'Habilitar envio de e-mail',
                  style: new TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22.0,
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Checkbox(
                  activeColor: Colors.green,
                  onChanged: (bool resposta){
                    setState(() {
                      _modoviagem = resposta;                  
                    });
                  },
                  value: _modoviagem,
                ),
                new Text(
                  'Habilitar "Modo Viagem"',
                  style: new TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22.0,
                  ),
                )
              ],
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
          'Configurações',
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