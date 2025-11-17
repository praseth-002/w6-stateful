import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Column(children: [
        SelectButton(),
        SelectButton(),
        SelectButton(),
      ],
    )));
}

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool selected = false;
  String selectText = "Not Selected";
  Color buttonColor = Colors.blue.shade50;
  Color textColor = Colors.black;

  
  void select() {
    setState(() {
      if(!selected){
        selectText = "Selected";
        buttonColor = Colors.blue.shade500;
        textColor = Colors.white;
        selected = true;
      } else {
        selectText = "Not Selected";
        buttonColor = Colors.blue.shade50;
        textColor = Colors.black;
        selected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 400,
        height: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          onPressed: select,
          child: Center(child: Text(selectText, style: TextStyle(color: textColor),)),
        ),
      ),
    );
  }
}
