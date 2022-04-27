import 'package:flutter/material.dart';
import 'package:tcc/closet.dart';
import 'package:tcc/sobre.dart';
import 'package:tcc/logocentro.dart';
import 'package:tcc/telacadastro.dart';
import 'package:tcc/login.dart';
import 'package:tcc/menu.dart';
import 'package:tcc/telaola.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VEST',
      initialRoute: '/',
      routes: {
        '/': (context) => const LogoCentro(),
        '/logocentro': (context) => const LogoCentro(),
        '/telaola': (context) => const TelaOla(),
        '/telacadastro': (context) => const TelaCadastro(),
        '/telalogin': (context) => const TelaLogin(),
        '/telacloset': (context) => const TelaCloset(),
        '/closet': (context) => const TelaCloset(),
        '/sobre': (context) => const TelaSobre(),
        '/menu': (context) => const TelaMenu(),
      },
    ),
  );
}
