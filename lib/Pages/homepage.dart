import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        elevation: 2.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                controller: t1,
                decoration: InputDecoration(hintText: "Enter Number 1")),
            TextField(
                keyboardType: TextInputType.number,
                controller: t2,
                decoration: InputDecoration(hintText: "Enter Number 2")),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange)),
                    onPressed: () => addition(),
                    child: Icon(CupertinoIcons.add)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange)),
                    onPressed: () => subtraction(),
                    child: Icon(CupertinoIcons.minus)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange)),
                    onPressed: () => multiply(),
                    child: Icon(CupertinoIcons.multiply)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange)),
                    onPressed: () => division(),
                    child: Icon(CupertinoIcons.divide)),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Center(
                  child: Text(
                "$sum ",
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold),
                textScaleFactor: 4.0,
              )),
            )
          ],
        ),
      ),
    );
  }
}
