import 'package:flutter/material.dart';
import 'package:tune_palyer_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: tune.color,
        ),
        onPressed: () {
          tune.playSound();
        },
        child: Container(),
      ),
    );
  }
}
