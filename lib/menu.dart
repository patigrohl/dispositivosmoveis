import 'package:flutter/material.dart';
import 'package:tcc/closet.dart';
import 'package:tcc/login.dart';
import 'package:tcc/sobre.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  final String title = '';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[300]),
            accountEmail: const Text("admin@vest.com"),
            accountName: const Text("Admin"),
            currentAccountPicture: const CircleAvatar(
              child: Text("A"),
            ),
          ),

          
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TelaSobre()),
              );
            },
          ),
          ListTile(
            title: const Text('Closet'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TelaCloset()),
              );
            },
          ),
          ListTile(
            title: IconButton(
              icon: const Icon(
                Icons.logout,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const TelaLogin()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
