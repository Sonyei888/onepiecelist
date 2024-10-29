import 'package:flutter/material.dart';
import 'package:onepiecelist/src/widgets/header_widget.dart';
import 'package:onepiecelist/src/widgets/lista_widget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: const Column(
        children: <Widget>[Headerwidget(), Listapersonajes()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 95, 25, 208),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
