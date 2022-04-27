import 'package:flutter/material.dart';
import 'package:tcc/logado.dart';
import 'package:tcc/menu.dart';

class TelaCloset extends StatefulWidget {
  const TelaCloset({Key? key}) : super(key: key);

  @override
  State<TelaCloset> createState() => _TelaClosetState();
}

class _TelaClosetState extends State<TelaCloset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA TITULO
      appBar: AppBar(
        title: const Text('Menu'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              addBotao('Favoritos', Icons.favorite_outline),
              addBotao('Closet', Icons.checkroom_outlined),
            ],
          ),

          Row(
            children: [
              addBotao('Agenda', Icons.schedule_outlined),
              addBotao('Add Peça', Icons.add_a_photo_outlined),
            ],
          ),

          Row(children: [
              addBotao('Insights', Icons.insights_outlined),
              addBotao('Sugestões', Icons.lightbulb_outlined),
          ],
          ), 
      
        ],
      ),
    );
  }

  caixaDialogo(msg) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(msg),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  //o pop que vai permitir fechar a caixa de dialogo
                },
                child: const Text('fechar'))
          ],
        );
      },
    );
  }

  addBotao(texto, icone) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      height: MediaQuery.of(context).size.height * 0.20,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              caixaDialogo('App em construcao');
            },
            iconSize: 50,
            icon: Icon(icone),
            color: Colors.blue[200],
          ),
          const SizedBox(height: 10),
          Text(texto, style: TextStyle(color: Colors.blue[200]))
        ],
      ),
    );
  }
}
