// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VoiceNotesPage extends StatefulWidget {
  const VoiceNotesPage({Key? key}) : super(key: key);

  @override
  State<VoiceNotesPage> createState() => _VoiceNotesPageState();
}

class _VoiceNotesPageState extends State<VoiceNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "À mettre en œuvre à l'avenir",
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
