import 'package:flutter/material.dart';
import 'package:tune_player_app/views/tune_views.dart';
// flutter build web --release && firebase init hosting && firebase deploy --only hosting -m "V 1.0.7"
void main() {
  runApp(const TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
