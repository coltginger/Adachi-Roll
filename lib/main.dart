import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    dynamic audio = PlayAudio();
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 199, 0),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mainmenu.png'),
              fit: BoxFit.cover,
            ),
          ),
        )
      ),
    );
  }
}

Future PlayAudio() async{
  try{
    final AudioPlayer player = AudioPlayer();
    return await player.play(AssetSource('assets/menusong.mp3')); 
  } catch(e){
    print("mamaste");
    return null;
  }
}