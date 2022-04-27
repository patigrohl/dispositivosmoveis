import 'package:flutter/material.dart';
import 'package:tcc/telaola.dart';
import 'package:flutter/services.dart';


class LogoCentro extends StatefulWidget {
  const LogoCentro({Key? key}) : super(key: key);

  @override
  _LogoCentroState createState() => _LogoCentroState();
}

class _LogoCentroState extends State<LogoCentro> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Future.delayed(const Duration(seconds: 4)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const TelaOla()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
            color: Colors.white,
            child: Center(
              child: Container(
                color: Colors.white,
                child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/imagem/logovest.jpg',
                  scale: 0.50,
                ),
            )
          ),
        ),
    );
  }
}