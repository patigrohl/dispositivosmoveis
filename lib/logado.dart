import 'package:flutter/material.dart';

class TelaLogado extends StatefulWidget {
  const TelaLogado({ Key? key }) : super(key: key);

  @override
  State<TelaLogado> createState() => _TelaLogadoState();
}

class _TelaLogadoState extends State<TelaLogado> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Colors.blue[300]),
              
              accountEmail: const Text("admin@vest.com"),
              accountName: const Text("Admin"),
              currentAccountPicture: const CircleAvatar(
                child: Text("A"),
                ),
              ),
            
            
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Minha conta"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),


            ListTile(
              leading: const Icon(Icons.insights),
              title: const Text("Insights"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),


            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favoritos"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
          ],
        ),
    );
  }
}          
    