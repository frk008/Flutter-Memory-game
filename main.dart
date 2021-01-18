import 'package:flutter/material.dart';
import 'package:memory_app/data/data.dart';




void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    allow = true;

    visiblePairs = pairs;
    Future.delayed(const Duration(seconds: 5),(){
      setState(() {
        visiblePairs = getQuestions();
        allow = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MEMORY GAME',
          style: TextStyle(
              color: Colors.grey[800],
              fontFamily: 'Abel',
              fontSize: 39.0
          ),
        ),
        backgroundColor: Colors.cyan[300],
      ),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 70,horizontal: 15),
        child: Column(
          children:<Widget> [
            Text('$score/800',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily:'EastSea',
              ),),
            Text('SCORE',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily:'EastSea',//sometimes all it needs is a full restart to work
              ),
            ),
            SizedBox(height: 50,),
            GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(mainAxisSpacing: 0.0,maxCrossAxisExtent: 100),
                children:List.generate(visiblePairs.length, (index){ //Creates a list with length positions and fills it with values created by calling generator for each index
                  return Tile(
                    imageAssetPath : visiblePairs[index].getImagePath(),
                    parent1: this,
                    tileIndex: index,

                  );
                }//index function
                )
            ),

          ],
        ),
      ),
    );

  }
}
class Tile extends StatefulWidget {
  String imageAssetPath;

  _MyHomePageState parent1;
  int tileIndex;
  Tile({this.imageAssetPath,this.parent1,this.tileIndex});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  int c=0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //selectedTileIndex = widget.tileIndex;
        if(!allow){
          if(selectedImageAssetPath!=''){
            if(selectedImageAssetPath == pairs[widget.tileIndex].getImagePath()){
              print('abbu mote hin');
              print(widget.tileIndex);
              allow = true;
              Future.delayed(const Duration(seconds: 2),() {
                score = score + 100;
                allow = false;
                widget.parent1.setState(() {
                  pairs[widget.tileIndex].setImageAsset('');
                  pairs[selectedTileIndex].setImageAsset('');
                });
              });
              selectedImageAssetPath = '';
            }
            else{
              print('wrong choice');
              allow = true;
              Future.delayed(const Duration(seconds: 2),(){
                score = score - 50;
                allow = false;
                widget.parent1.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false); //2nd pair
                  pairs[selectedTileIndex].setIsSelected(false); // part of 1st pair
                });
              });
              selectedImageAssetPath = '';
            }

          }
          else{
            //c=1;
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath = pairs[widget.tileIndex].getImagePath(); // this will give question mark but we want behind the scenes.
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);

          });
          // print('clkic');
        }
      },
      child: Container(
          margin: EdgeInsets.all(5),
          //check whether selected -- if selected display that particular image at that index
          child:  pairs[widget.tileIndex].getImagePath() != '' ? Image.asset(pairs[widget.tileIndex].getSelected() ?
          pairs[widget.tileIndex].getImagePath(): widget.imageAssetPath): Image.asset('assets/correct.png')
      ),
    );
  }
}
