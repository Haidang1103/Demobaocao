import 'package:flutter/material.dart';
import 'package:grocerires/screen/Button.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              children: [],
            ),
            Image.asset('images/anh1.png'),
            const SizedBox(
              height: 30,
              width: double.maxFinite,
            ),
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            const Text(
              'to our store',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Get your grecories as fast as in hours',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 207, 175, 175)),
              ),
            ),
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
                    builder: (context) => const Buttonscreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                child: Text(
                  "Get started",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
