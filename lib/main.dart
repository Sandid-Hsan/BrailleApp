import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';
import 'package:vibration/vibration.dart';
void main() => runApp( MaterialApp(
  title: 'MyBraille',
  home: Braillewriting(),
));


launchWhatsApp() async {
  const url = 'https://play.google.com/store/apps/details?id=com.musescore.playerlite';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  }

}

class Braillewriting extends StatefulWidget {
  const Braillewriting({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Braillewritingstate();
  }

}
class Braillewritingstate extends State<Braillewriting>{
  get text => 'MyBraille';
  String text1 = "0";
  get val => "0";
  //set val(String val) {
    //text1 = val;
  //}

   output(int sum , String x) {
     if (sum== 10 ){
       setState((){
         x= "C";
       });
     }else if( sum == 6){setState(() {
       x= "D";
     });}
     return x;

  }
  String x= "";
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(text),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.disabled_visible))),
              Flexible(child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MusicXML();
                }));
              }, icon: const Icon(Icons.print))),
              Flexible(
                  child: IconButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return MusicNote();
                    }));
                  },
                    icon: const Icon(Icons.music_note),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FloatingActionButton.large(
                child: const Text('1'),
                onPressed: () async {
                  Vibration.vibrate(duration: 200);
                  sum += 1;

                },
              ),
              FloatingActionButton.large(
                child: const Text('4'),
                onPressed: () {
                  Vibration.vibrate(duration: 400);
                  sum += 4;
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FloatingActionButton.large(
                child: const Text('2'),
                onPressed: () {
                  Vibration.vibrate(duration: 500);
                  sum += 2;
                },
              ),
              FloatingActionButton.large(
                child: const Text('5'),
                onPressed: () {
                  Vibration.vibrate(duration: 600);
                  sum += 5;
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FloatingActionButton.large(
                child: const Text('3'),
                onPressed: () {
                  Vibration.vibrate(duration: 700);
                  sum += 3;
                },
              ),
              FloatingActionButton.large(
                child: const Text('6'),
                onPressed: () {
                  Vibration.vibrate(duration: 800);
                  sum += 6;
                },
              )
            ],
          ),
          Row(
            children: [
              TextButton(onPressed: () => output(sum, x),
                  child: Text("Generate music note :  $x", style: TextStyle(fontSize: 26)),
              )
            ],
          ),
        ],
      ),

    );
  }
}


class MusicNote extends StatelessWidget {
   MusicNote({super.key});
  @override
  int z =1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicNote'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Music playlist", style: TextStyle(fontSize: 25),)
            ],
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text("Music piece n°1", style: TextStyle(fontSize: 20),),
              IconButton(
                  onPressed: (){
                  if(z == 1){
                    Icon(Icons.play_arrow);
                    z = 0;
                  }else{
                    Icon(Icons.pause);
                    z = 1;}

              },
                icon: Icon(Icons.play_arrow),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Music piece n°2", style: TextStyle(fontSize: 20),),
              IconButton(
                onPressed: (){
                  if(z == 1){
                    Icon(Icons.play_arrow);
                    z = 0;
                  }else{
                    Icon(Icons.pause);
                    z = 1;}

                },
                icon: Icon(Icons.play_arrow),
              ),
            ],
          )
        ],
      ),
    );
  }
}
class MusicXML extends StatelessWidget {
  const MusicXML({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicXML'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, child: Text("choose your XML file to translate", style: TextStyle(fontSize: 18, color: Colors.black),)),
              Flexible(child: IconButton(onPressed: (){}, icon: Icon(Icons.upload_file),)),
            ],
          ),
        ],
      ),


    );
  }
}
