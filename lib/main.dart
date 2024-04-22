import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 199, 0),
          title: const Text('ADACHI ROLL!!!!'),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mainmenu.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const PlayAudio(),
        )
      ),
    );
  }
}

class PlayAudio extends StatefulWidget {
  const PlayAudio({super.key});

  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio> {

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    playSound();
    return ElevatedButton(
      onPressed: (){
        
      },
      child: const Text('CLICK TO ROLL'),

    );
  }

  Future<void> playSound() async{
    String audioPath = "menusong.mp3";

    await player.play(AssetSource(audioPath));
  }
}