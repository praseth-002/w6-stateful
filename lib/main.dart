// import 'dart:ui_web';

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() {
//   runApp(MaterialApp(home: Column(children: [
//         SelectButton(),
//         SelectButton(),
//         SelectButton(),
//       ],
//     )));
// }

// class SelectButton extends StatefulWidget {
//   const SelectButton({super.key});

//   @override
//   State<SelectButton> createState() => _SelectButtonState();
// }

// class _SelectButtonState extends State<SelectButton> {
//   bool selected = false;
//   String selectText = "Not Selected";
//   Color buttonColor = Colors.blue.shade50;
//   Color textColor = Colors.black;

  
//   void select() {
//     setState(() {
//       if(!selected){
//         selectText = "Selected";
//         buttonColor = Colors.blue.shade500;
//         textColor = Colors.white;
//         selected = true;
//       } else {
//         selectText = "Not Selected";
//         buttonColor = Colors.blue.shade50;
//         textColor = Colors.black;
//         selected = false;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 10),
//         width: 400,
//         height: 100,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: buttonColor,
//           ),
//           onPressed: select,
//           child: Center(child: Text(selectText, style: TextStyle(color: textColor),)),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Favorite Card"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           BestCard(title: "burger", desc: "2 bread 1 meat in the middle"),
//           BestCard(title: "sushi", desc: "meat wrapped in rice wrapped in sushi"),
//           BestCard(title: "pizza", desc: "circular bread meat cheese slice"),
//         ],
//       ),
//     )
//   ));
// }

// class BestCard extends StatefulWidget {
//   final String title;
//   final String desc;

//   const BestCard ({super.key, required this.title, required this.desc});

//   @override  
//   State<BestCard> createState() => _BestCardState();
// }

// class _BestCardState extends State<BestCard> {
//   // Color iconColor = Colors.grey;
//   Icon icon = Icon(Icons.favorite_border, color: Colors.grey,);
//   bool iconState = false;

//   void iconColorPress() {
//     setState(() {
//       if (!iconState) {
//         icon = Icon(Icons.favorite, color: Colors.red,);
//         iconState = true;
//       } else {
//         icon = Icon(Icons.favorite_border, color: Colors.grey,);
//         iconState = false;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       // margin: EdgeInsets.all(10),
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: BorderDirectional(
//           bottom: BorderSide(
//             color: Colors.black,
//             width: 1,
//             style: BorderStyle.solid,
//           ),
//         ),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(widget.title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10,),
//                 Text(widget.desc, style: TextStyle(color: Colors.black)),
//               ],
//             ),
//           ),
//           IconButton(
//             onPressed: iconColorPress,
//             icon: icon,
//           ),
//         ],
//       ),
//     );
//   }
// }

// List<String> images = [
//   "assets/bird.jpg",
//   "assets/bird2.jpg",
//   "assets/insect.jpg",
//   "assets/girl.jpg",
//   "assets/man.jpg",
// ];

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ImageWidget()
//     ),
//   );
// }

// class ImageWidget extends StatefulWidget {
//   const ImageWidget ({super.key});

//   @override  
//   State<ImageWidget> createState() => _ImageWidgetState();
// }

// class _ImageWidgetState extends State<ImageWidget> {
//   int currImage = 0;
//   String displayImage = images[0];

//   void nextImage() {
//     setState(() {
//       if(currImage >= 4){
//         currImage = 0;
//         displayImage = images[currImage];
//       }else {
//         currImage++;
//         displayImage = images[currImage];
//       }
//     });
//   }
//   void prevImage() {
//     setState(() {
//       if(currImage <= 0){
//         currImage = 4;
//         displayImage = images[currImage];
//       }else {
//         currImage--;
//         displayImage = images[currImage];
//       }
//     });
//   }

//   String imagePath = 'assets/bird.jpg';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Image Viewer"),
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(onPressed: prevImage, icon: Icon(Icons.navigate_before)),
//           IconButton(onPressed: nextImage, icon: Icon(Icons.navigate_next)),
//         ],
//       ),
//       body: Image(image: AssetImage(displayImage)),
//       );
//   }
// }

List<Color> scoreColors = [
  Colors.transparent,
  Colors.green.shade50,
  Colors.green.shade100,
  Colors.green.shade200,
  Colors.green.shade300,
  Colors.green.shade400,
  Colors.green.shade500,
  Colors.green.shade600,
  Colors.green.shade700,
  Colors.green.shade800,
  Colors.green.shade900,
];

void main() {
  runApp(MaterialApp(
    home: Container(
      color: Colors.lightGreen,
      child: Column(
        children: [
          ScoreCard(subject: "Flutter"),
          ScoreCard(subject: "Dart"),
        ],
      ),
    ),
  ));
}

class ScoreCard extends StatefulWidget {
  final String subject;
  const ScoreCard ({super.key, required this.subject});
  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  int currScore = 0;
  int maxScore = 10;
  void addScore() {
    setState(() {
      if(currScore < maxScore){
        currScore++;
      }
    });
  }

  void subScore() {
    setState(() {
      if(currScore > 0){
        currScore--;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      // width: 200,
      // height: 100,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(
        children: [
          Text("My score in ${widget.subject}", style: TextStyle(decoration: TextDecoration.none, color: Colors.grey),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: subScore, icon: Icon(Icons.remove, size: 50,)),
              IconButton(onPressed: addScore, icon: Icon(Icons.add, size: 50,)),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              children: [
                Expanded(flex: currScore, child: Container(height: 50,
                decoration: BoxDecoration(
                  color: scoreColors[currScore],
                  borderRadius: BorderRadius.all(Radius.circular(13.75))
                ),)),
                Expanded(flex: maxScore - currScore, child: Container(height: 50, color: Colors.transparent,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
