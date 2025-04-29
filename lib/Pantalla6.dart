import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video 16',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff4491d9),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffffd689),
                  ),
                  child: const Text('Change padding'),
                  onPressed: () {
                    setState(() {
                      padValue = padValue == 0.0 ? 100.0 : 0.0;
                    });
                  },
                ),
                Text('Padding = $padValue'),
                AnimatedPadding(
                  padding: EdgeInsets.all(padValue),
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    color: Color(0xfffe9090),
                  ),
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
