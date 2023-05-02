import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 32, right: 32, top: 96),
            child: Text(
              "Find and rental car in easy steps",
              style: TextStyle(
                color: Colors.white,
                fontSize: 44,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 339,
                height: 59,
                margin: EdgeInsets.only(left: 32, right: 32, bottom: 59),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(250, 250, 250, 1),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Let’s Go!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
