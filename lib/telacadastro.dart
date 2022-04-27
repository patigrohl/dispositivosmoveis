import 'package:flutter/material.dart';
import 'package:tcc/login.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  String nome = '';
  String sobrenome = '';
  String telefone = '';
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA TITULO
      appBar: AppBar(
        title: const Text('Cadastro'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    nome = text;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Nome',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    telefone = text;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Telefone',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'E-mail',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Senha',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                IconButton(
                  icon: const Icon(Icons.check),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TelaLogin()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
