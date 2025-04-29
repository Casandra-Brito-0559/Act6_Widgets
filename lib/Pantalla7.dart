import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video 17',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff2d95e8),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedPhysicalModel(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  elevation: _isFlat ? 0 : 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Color(0xff2742de),
                  color: Colors.white,
                  child: const SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: Icon(Icons.android_outlined),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Click'),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                    });
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
