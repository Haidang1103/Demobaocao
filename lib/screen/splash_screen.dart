import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocerires/screen/onbording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const OnbordingScreen(),
      ));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/anh1.png'),
            const SizedBox(
              width: 10,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "nectar",
                  style: TextStyle(fontSize: 61, color: Colors.white),
                ),
                Text(
                  "o n l i n e  g r o c e r i e s",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
