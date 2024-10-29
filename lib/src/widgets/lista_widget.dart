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
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titulo: ", "2018"),
              SizedBox(
                width: widthpantalla * 0.03,
              ),
              bloquesPortada("p2.jpg", "titulo: ", "2022"),
              SizedBox(
                width: widthpantalla * 0.03,
              ),
              bloquesPortada("p3.jpg", "titulo: ", "2023")
            ],
          ),
          const Divider(thickness: 1, color: Color.fromARGB(255, 62, 62, 62)),
          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("nombre", 0xff21E295, "01.jpg"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String image) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 43, 43, 43)),
          height: 65,
      child: Row(),
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
        ),
        RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: subtitulo,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
