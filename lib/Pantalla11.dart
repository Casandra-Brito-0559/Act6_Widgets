import 'package:flutter/material.dart';

class PantallaOnce extends StatefulWidget {
  const PantallaOnce({Key? key}) : super(key: key);

  @override
  State<PantallaOnce> createState() => _PantallaOnceState();
}

class _PantallaOnceState extends State<PantallaOnce> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video 21',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff84b1f4),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    '$_count',
                    style: const TextStyle(fontSize: 40),
                    key: ValueKey(_count),
                  ),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                ),
                ElevatedButton(
                  child: const Text('Add'),
                  onPressed: () {
                    setState(() {
                      _count += 1;
                    });
                  },
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
          ),
        ],
      ),
    );
  }
}
