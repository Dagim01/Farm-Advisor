import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Field extends StatefulWidget {
  const Field({super.key, required this.title});
  final title;

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(247, 250, 250, 246),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    // offset: Offset(5, 10),

                    blurStyle: BlurStyle.normal)
              ],
            ),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 41, 41, 41),
                          ),
                          Text(
                            "Title",
                            style: TextStyle(fontSize: 14, fontFamily: 'Robot'),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Icon(Icons.more_vert),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.landscape,
                  color: Colors.white,
                ),
                Text("127m above sea level"),
              ],
            ),
          ),
          Container(
              color: Colors.blue,
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '367',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text('Current GDD')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '367',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text('Current GDD')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '367',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text('Current GDD')
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}