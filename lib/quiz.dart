import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = const StartScreen(switchScreen);

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }


// initState method..................................
//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 78, 13, 151),
//                 Color.fromARGB(255, 107, 15, 168),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           // child: const StartScreen(),
//           // child: activeScreen,
//           child: activeScreen == 'start-screen'
//               ? StartScreen(switchScreen)
//               : const QuestionsScreen(),
//         ),
//       ),
//     );
//   }
// }


//ternary condition..........................................
//   @override
//   Widget build(context) {
//     final screenWidget = activeScreen == 'start-screen'
//         ? StartScreen(switchScreen)
//         : const QuestionsScreen();

//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 78, 13, 151),
//                 Color.fromARGB(255, 107, 15, 168),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           // child: const StartScreen(),
//           // child: activeScreen,
//           child: screenWidget,
//         ),
//       ),
//     );
//   }
// }


//if statement.............................................
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: const StartScreen(),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
