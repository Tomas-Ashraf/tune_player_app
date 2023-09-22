// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tune_palyer_app/models/tune_model.dart';

import 'package:tune_palyer_app/widgets/tune_item.dart';

class TunePlayer extends StatefulWidget {
  const TunePlayer({super.key});

  @override
  State<TunePlayer> createState() => _TunePlayerState();
}

class _TunePlayerState extends State<TunePlayer> {
  final List<TuneModel> tunes = [
    TuneModel(color: HexColor('#ea2c3c'), sound: 'note1.wav'),
    TuneModel(color: HexColor('#f49431'), sound: 'note2.wav'),
    TuneModel(color: HexColor('#fbf25e'), sound: 'note3.wav'),
    TuneModel(color: HexColor('#3dc15b'), sound: 'note4.wav'),
    TuneModel(color: HexColor('#0da588'), sound: 'note5.wav'),
    TuneModel(color: HexColor('#0ea0e9'), sound: 'note6.wav'),
    TuneModel(color: HexColor('#9a10a8'), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tune'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map((e) => TuneItem(
                  tune: e,
                ))
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var HexColor in tuneColors) {
  //     items.add(TuneItem(itemColor: HexColor));
  //   }
  //   return items;
  // }
}
