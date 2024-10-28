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
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: <Widget> [
          Headerwidget(),
          Listapersonajes()
        ],
      ),
    );
  }
}