import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy/pages/quiz_page.dart';
import 'package:theme_provider/theme_provider.dart';

void main() => runApp(const Quizzy());

class Quizzy extends StatelessWidget {
  const Quizzy({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.daiBannaSil().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('G.K Quiz',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions:  [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  // Define the action to be performed when the icon is pressed
                  // For example, you can show a dialog, navigate to another screen, etc.
                  print('Icon pressed!');
                },
                icon: Icon(Icons.lightbulb, color: Colors.black),
              ),            ),
          ],
        ),
        drawer: const Drawer(),

        backgroundColor: Colors.white,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),

      // routes: {
      //   '/home': (context) => HomePage(),
      //   '/quizPage': (context) => QuizPage(),
      // },
    );
  }
}

