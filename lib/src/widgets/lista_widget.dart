import 'package:flutter/material.dart';

class Listapersonajes extends StatefulWidget {
  const Listapersonajes({super.key});

  @override
  State<Listapersonajes> createState() => _ListapersonajesState();
}

class _ListapersonajesState extends State<Listapersonajes> {
  double widthpantalla = 0;
  final titulosStyletext = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Portadas",
            style: titulosStyletext,
          ),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titutlo", "subtitulo"),
              SizedBox(
                width: widthpantalla*0.03,
              ),
              bloquesPortada("p2.jpg", "titutlo", "subtitulo"),
              SizedBox(
                width: widthpantalla*0.03,
              ),
              bloquesPortada("p3.jpg", "titutlo", "subtitulo")
            ],
          )
        ],
      ),
    );
  }

  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthpantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
