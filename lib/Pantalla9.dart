import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video 19',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff507fa6),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: const FlutterLogo(
                      size: 100,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Rotate Logo'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff6c56a),
                  ),
                  onPressed: () {
                    setState(() => turns += 1 / 4);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ),
        ],
      ),
    );
  }
}
