import 'package:ahihi/listQuestion.dart';
import 'package:flutter/material.dart';

listQuestion q = listQuestion();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("Mach"),
          ),
        ),
        body: SafeArea(
          child: BoDy(),
        ),
      ),
    );
  }
}

class BoDy extends StatefulWidget {
  const BoDy({Key? key}) : super(key: key);

  @override
  State<BoDy> createState() => _BoDyState();
}

class _BoDyState extends State<BoDy> {
  List<Icon> checkAnswer = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              q.getQuestion(),
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Colors.green,
                          child: Text(
                            q.getd1(),
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              q.next();
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          color: Colors.red,
                          child: Text(
                            q.getd2(),
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              q.next();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Colors.purple,
                          child: Text(
                            q.getd3(),
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              q.next();
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          color: Colors.yellow,
                          child: Text(
                            q.getd4(),
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              q.next();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}