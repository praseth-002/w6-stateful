import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Favorite Card"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          BestCard(title: "burger", desc: "2 bread 1 meat in the middle"),
          BestCard(title: "sushi", desc: "meat wrapped in rice wrapped in sushi"),
          BestCard(title: "pizza", desc: "circular bread meat cheese slice"),
        ],
      ),
    )
  ));
}

class BestCard extends StatefulWidget {
  final String title;
  final String desc;

  const BestCard ({super.key, required this.title, required this.desc});

  @override  
  State<BestCard> createState() => _BestCardState();
}

class _BestCardState extends State<BestCard> {
  // Color iconColor = Colors.grey;
  Icon icon = Icon(Icons.favorite_border, color: Colors.grey,);
  bool iconState = false;

  void iconColorPress() {
    setState(() {
      if (!iconState) {
        icon = Icon(Icons.favorite, color: Colors.red,);
        iconState = true;
      } else {
        icon = Icon(Icons.favorite_border, color: Colors.grey,);
        iconState = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: BorderDirectional(
          bottom: BorderSide(
            color: Colors.black, // Color of the border
            width: 1, // Width of the border
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Text(widget.desc, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          IconButton(
            onPressed: iconColorPress,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
