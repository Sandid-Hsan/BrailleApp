import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  title: 'MyBraille',
  home: Braillewriting(),
));



class Braillewriting extends StatelessWidget{
  const Braillewriting({super.key});
  get text => 'MyBraille';
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
              Flexible(child: IconButton(onPressed: (

                  ){}, icon: const Icon(Icons.disabled_visible))),
              Flexible(child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MusicXML();
                }));
              }, icon: const Icon(Icons.print))),
              Flexible(
                child: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                onPressed: (){

                  },
              ),
              FloatingActionButton.large(
                  child: const Text('4'),
                  onPressed: (){},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FloatingActionButton.large(
                child: const Text('2'),
                onPressed: (){

                },
              ),
              FloatingActionButton.large(
                child: const Text('5'),
                onPressed: (){},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              FloatingActionButton.large(
                child: const Text('3'),
                onPressed: (){

                },
              ),
              FloatingActionButton.large(
                child: const Text('6'),
                onPressed: (){},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(child: TextFormField()),
              FloatingActionButton(
                child: const Icon(Icons.send),
                onPressed: (){},
              ),

            ],
          )
        ],
      ),

    );
  }
}
class MusicNote extends StatelessWidget {
  const MusicNote({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicNote'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              FloatingActionButton(onPressed: (){

              },
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
      body: const Text(
        "salut!"
      ),
    );
  }
}
