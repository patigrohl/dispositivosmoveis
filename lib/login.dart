import 'package:flutter/material.dart';
import 'package:tcc/closet.dart';

//
// TELA PRINCIPAL
// Stateful = stf + TAB
class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Declaracao de atributos que serao utilizados
  //para receber os dados que o usuario digitar
  //no campo de texto
  var txtLogin = TextEditingController();
  var txtSenha = TextEditingController();

  //Declaracao do atributo que indetifica
  //unicamente o formulario
  var f1 = GlobalKey<FormState>();

  //preenche com o valor indicado o campo
  @override
  void initState() {
    //definir o valor inicial da variavel
    txtLogin.text = '';
    txtSenha.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //BODY
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              //identificador do form
              key: f1,
              child: Column(
                children: [
                  Image.asset('assets/imagem/logovest.jpg'),
                  //campo texto
                  campoTexto('login', txtLogin),
                  const SizedBox(height: 20),
                  campoTexto('senha', txtSenha),
                  const SizedBox(height: 20),
                  botao('Login'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      readOnly: false,
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Colors.grey,
        ),
        hintText: 'Digite aqui',
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  
  //
  //BOTAO
  //
  botao(rotulo) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        //Evento que ocorrera quando o usuario acionar o botao
        //clique do botao
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const TelaCloset()));
        },

        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 22),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
      ),
    );
  }
}
