import 'package:flutter/material.dart';
import 'package:flutterdex/screens/home/widgets/about.dart';
import 'package:flutterdex/screens/home/widgets/stats.dart';
import 'package:flutterdex/screens/home/widgets/weaknesses.dart';
import 'package:flutterdex/models/pokemon.dart';
import 'package:flutterdex/style.dart';

class HomePage extends StatelessWidget {
  final pokemon = Pokemon(
      picture: "assets/charmander.png",
      about: "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
      height: 0.6,
      weight: 8.5,
      type: ["Fogo"],
      skill: "Chama",
      weakness: ["Água", "Terra", "Rocha"]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(
          "Charmander #004",
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        leading: Image.asset("assets/logo.png"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              children: [
                Image.asset(pokemon.picture),
                Description(pokemon.about),
                Stats(pokemon),
                Weaknesses(pokemon.weakness)
              ]
          ),
        ),
      ),
    );
  }
}