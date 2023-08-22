import 'package:changenotifier_questions/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const QuestionParser());
}

class QuestionParser extends StatelessWidget {
  const QuestionParser({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuestionSet(),
      child: const MaterialApp(
        home: Questions(),
      ),
    );
  }
}
