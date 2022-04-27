import 'package:flutter/material.dart';
import 'package:tcc/closet.dart';
import 'package:tcc/menu.dart';

import 'logado.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA TITULO
      appBar: AppBar(
        title: const Text('Sobre'),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TelaMenu()));
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const TelaLogado()));
            },
            icon: const Icon(Icons.person),
          ),
        ],
        backgroundColor: Colors.blue[400],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset('assets/imagem/pati.jpg',
                      height: 300, width: 400),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Olá!',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '\n Esse app surgiu para\n otimizar o tempo \n em vestir-se \n '
                    'Desenvolvido por mim, \n Patricia Ferreira, \n  aluna do curso de ADS \n'
                    'da Fatec - Ribeirão Preto',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const TelaCloset()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                    ),
                    child: const Text(
                      "Voltar",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
