import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  final int? playerWins;
  final int? computerWins;

  ScoreBoard(this.playerWins, this.computerWins);

  @override
  _ScoreBoardState createState() {
    return _ScoreBoardState(playerWins, this.computerWins);
  }
}

class _ScoreBoardState extends State<ScoreBoard> {
  int? playerWins;
  int? computerWins;
  _ScoreBoardState(this.playerWins, this.computerWins);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Scoreboard",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: const RoundedRectangleBorder(side: BorderSide()),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "$playerWins : $computerWins",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 60.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
