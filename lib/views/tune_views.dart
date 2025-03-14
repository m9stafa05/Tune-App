import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widget/tune_item_widget.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  // final TuneModel tune = TuneModel(
  //   color: Colors.red,
  //   sound: 'sounds/note1.wav',
  // );
  final List<TuneModel> tunes = [
    TuneModel(
      color: Color(0xffF44336),
      sound: 'sounds/note1.wav',
    ),
    TuneModel(
      color: Color(0xffF89800),
      sound: 'sounds/note2.wav',
    ),
    TuneModel(
      color: Color(0xffFEEB3B),
      sound: 'sounds/note3.wav',
    ),
    TuneModel(
      color: Color(0xff4CAF50),
      sound: 'sounds/note4.wav',
    ),
    TuneModel(
      color: Color(0xff2F9688),
      sound: 'sounds/note5.wav',
    ),
    TuneModel(
      color: Color(0xff2896F3),
      sound: 'sounds/note6.wav',
    ),
    TuneModel(
      color: Color(0xff9C27B0),
      sound: 'sounds/note7.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Tune",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff222f37),
      ),
      body: Column(
        children:
            tunes
                .map(
                  (tune) => TuneItem(tune: tune),
                )
                .toList(),
      ),
    );
  }

  // List<TuneItem> getItem() {
  //   List<TuneItem> items = [];

  //   for (int i = 0; i < tunes.length; i++) {
  //     items.add(TuneItem(tune: tunes[i]));
  //   }
  //   return items;
  // }
}
