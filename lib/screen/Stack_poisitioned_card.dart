import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
        ),
        Positioned(
          bottom: 100,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "Tieu de",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mot hai ba bon nam sau bay tam chin"
                    "Mot hai ba bon nam sau bay tam chin"
                    "Mot hai ba bon nam sau bay tam chin",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go back"))
          ],
        )
      ],
    );
  }
}
