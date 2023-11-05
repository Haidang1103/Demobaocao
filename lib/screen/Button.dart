import 'package:flutter/material.dart';
import 'package:grocerires/screen/Expanded.dart';
import 'package:grocerires/screen/Stack_poisitioned_card.dart';

class Buttonscreen extends StatelessWidget {
  const Buttonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DemoButton")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Stack1(),
                    ),
                  );
                },
                child: const Text(
                  "Stack,Poisitioned,Card",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromARGB(255, 104, 178, 107),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Expanded1(),
                    ),
                  );
                },
                child: const Text("Expanded")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"))
          ],
        ),
      ),
    );
  }
}
