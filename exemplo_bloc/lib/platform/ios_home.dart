// LEMBRANDO, TESTAR EMULADOR DE IPHONE **SOMENTE** EM MAC, NÃO IRÁ FUNCIONAR EM WINDOWS, NÃO TENTE DE FORMA ALGUMA

import 'package:exemplo_bloc/bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class IOSHome extends StatefulWidget {

  final String title;

  IOSHome(this.title);

  @override
  _IOSHomeState createState() => _IOSHomeState();
}

class _IOSHomeState extends State<IOSHome> {

  var imcBloc = IMCBloc();

  _rowHeight(){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: CupertinoTextField(
        placeholder: 'Altura (cm)', //se usa PLACEHOLDER em Cupertino ao invés de TextButton (iOS)
        controller: imcBloc.heightController,
        keyboardType: TextInputType.number,
      ),
    );
  }

  _rowWeight(){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: CupertinoTextField(
        placeholder: 'Peso(kg)',
        controller: imcBloc.weightController,
        keyboardType: TextInputType.number,
      ),
    );
  }

  _rowResult(){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: StreamBuilder<String>(
        stream: imcBloc.myStream,
        initialData: '',
        builder: (context, snapshot){ //aqui retorna o resultado
          if(snapshot.hasError){
            return Text('ERROU');
          } else if(snapshot.hasData){
            return Text('Resultado: ${snapshot.data}');
          }
          return Text('...');
        },
      ),
    );
  }

  _rowCalculateButton() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: CupertinoButton.filled(
        child: Text('Calcular'),
        onPressed: () => imcBloc.calculate(),
      )
    );
  }

  _rowResetButton() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: CupertinoButton(
        child: Text('Limpar campos'),
        onPressed: () => imcBloc.resetFields(), //vai resetar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('${widget.title}'),
        ),
      child: ListView(
        children: [
          _rowWeight(), //sempre seguindo a ordem das ROWs
          _rowHeight(),
          _rowResult(),
          _rowCalculateButton(),
          _rowResetButton(),
        ],
      ),
    );
  }
}

// LEMBRANDO, TESTAR EMULADOR DE IPHONE **SOMENTE** EM MAC, NÃO IRÁ FUNCIONAR EM WINDOWS, NÃO TENTE DE FORMA ALGUMA