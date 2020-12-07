import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
void play() {
  assetsAudioPlayer.open(
    Audio('assets/salut.mp3'),
    forceOpen: true,
  );
}


class _HomePageState extends State<HomePage> {
  //AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();


  // ignore: always_specify_types
  final Map<int, String> urls = {
    0: 'https://soundoftext.nyc3.digitaloceanspaces.com/e3a3c040-db6c-11e7-955b-c7bfaffa10d8.mp3',
    1: 'https://soundoftext.nyc3.digitaloceanspaces.com/936c99c0-1538-11e8-9416-5382295fa6ae.mp3'
  };

  // ignore: non_constant_identifier_names, always_specify_types
  final Map<int, String> display_text = {
    0: 'Salut!',
    1: 'Zdravstvuyte (Rusa)',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
      ),
      body: GridView.builder(
          itemCount: urls.length,
          padding: const EdgeInsets.all(8.0).copyWith(bottom: 64.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 32.0,
            crossAxisSpacing: 32.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: play,
                child: Text(
                  'Mergi te rog',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
