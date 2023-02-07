import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*BARRA DO APP*/
      appBar: new AppBar(
        title: new Text(
          ":: Calculadora ::",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),

      /*CRIA O CORPO DA TELA*/
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          //ONDE O TEXTO É COLOCADO START,CENTER, END
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Resultado: $resultado",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Informe o Valor 1!"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Informe o Valor 2!"),
              controller: t2,
            ),

            Padding(padding: const EdgeInsets.only(top: 20)),
            /*espaçamento*/

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                MaterialButton(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                  onPressed: subtrair,
                ),
              ],
            ),

            //espacamento depois dos botoes
            Padding(padding: const EdgeInsets.only(top: 20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "Limpar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.grey,
                  onPressed: limpar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*ATRIBUTOS */
  var num1;
  var num2;
  var resultado = 0;

  //Converter o tipo do texto
  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  /*METODOS*/
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }
}
