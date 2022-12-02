// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:notes/Screens/HomeScreen.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://github.com/Amath2605/tonnote');

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          customAppBar("Info",45),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(
                    style: TextStyle(
                        fontSize: isTablet ? 30 : 20,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                    children: <TextSpan>[
                      const TextSpan(
                          text: "This an open source app that was made by "),
                      TextSpan(
                          text: "AmathProd ",
                          style: TextStyle(color: colors[2])),
                      const TextSpan(text: "using flutter to learn new techniques!"),
                    ],
                  )),
                  const SizedBox(
                    height : 10,
                  ),
                  const Text(
                    "Cette application utilises Sqflite avec un une base deonnée en local pour stocker les notes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height : 20,
                  ),
                  GestureDetector(
                    onTap: () => _launchUrl(),
                    child: Container(
                      child: Text(
                        "Cliquez ici pour voir l'app sur Github",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: colors[3]),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Ne peut pas lancer $_url';
  }
}
