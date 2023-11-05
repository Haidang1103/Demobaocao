import 'package:flutter/material.dart';

class Expanded1 extends StatelessWidget {
  const Expanded1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 150,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              height: 150,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              height: 150,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back")),
        ],
      ),
    );
  }
}
