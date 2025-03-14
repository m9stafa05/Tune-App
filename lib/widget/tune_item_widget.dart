import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playSound();
      },
      child: Container(
        width: double.infinity,
        height: 113,
        color: tune.color,
      ),
    );
  }
}
