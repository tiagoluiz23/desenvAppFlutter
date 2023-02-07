// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*BARRA DO APP*/
      appBar: AppBar(
        title: const Text(
          ":: Calculadora ::",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),

      /*CRIA O CORPO DA TELA*/
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          //ONDE O TEXTO É COLOCADO START,CENTER, END
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Resultado: $resultado",
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o Valor 1!"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o Valor 2!"),
              controller: t2,
            ),

            Padding(padding: const EdgeInsets.only(top: 20)),
            /*espaçamento*/

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: somar,
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.redAccent,
                  onPressed: subtrair,
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            //espacamento depois dos botoes
            Padding(padding: const EdgeInsets.only(top: 20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.grey,
                  onPressed: limpar,
                  child: const Text(
                    "Limpar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*ATRIBUTOS */
  // ignore: prefer_typing_uninitialized_variables
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
