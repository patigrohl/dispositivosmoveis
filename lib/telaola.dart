import 'package:flutter/material.dart';
import 'package:tcc/telacadastro.dart';
import 'login.dart';

class TelaOla extends StatefulWidget {
  const TelaOla({Key? key}) : super(key: key);

  @override
  State<TelaOla> createState() => _TelaOlaState();
}

class _TelaOlaState extends State<TelaOla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              child: Column(
                children: [
                   const SizedBox(
                    height:100,
                  ),

                  Image.asset('assets/imagem/logovest.jpg'),
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
                    'Vestir-se nunca foi \n tão prático, rápido \n e divertido.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(
                    height: 50,
                  ),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const TelaCadastro()));
                    },
                    style: ButtonStyle(                     
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                    ),

                    ),
                    child: const Text('Cadastrar-se',
                    style: TextStyle (fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),

                 const SizedBox(
                    height: 20,
                  ),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const TelaLogin()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    ),
                    ),
                    child: const Text("Tenho cadastro",
                    style: TextStyle (fontSize: 22),
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
