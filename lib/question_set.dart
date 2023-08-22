import 'package:flutter/material.dart';

class QuestionSet extends ChangeNotifier {
  List<String> qset = [
    'There is a cryptic secret hidden by the creators of this hunt and it is your job, intepid hunters, to hunt for them and decode what they mean! May the codes be with you, on your trek.',
    'One of the biggest books you\'ll ever see, is there in VIT. Hidden in there, the answer to this question lays bare. It\'s size hides a secret. Oh! You haven\'t taken a peek yet? Find the page, the line. Translate it, and the points arethine. (Note:This question involves no',
    'Contact the musicians',
  ];

  int currentIndex = 0;

  void nextItem() {
    if (currentIndex < qset.length - 1) {
      currentIndex++;
      notifyListeners();
    }
  }

  void previousItem() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }

  String getCurrentItem() {
    return qset[currentIndex];
  }
}
