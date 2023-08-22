import 'package:changenotifier_questions/first_blood.dart';
import 'package:changenotifier_questions/qr_code_button.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

// class Questions extends StatefulWidget {
//   const Questions({super.key});
//   @override
//   State<Questions> createState() {
//     return _QuizState();
//   }
// }
class QuestionSet extends ChangeNotifier {
  List<String> qset = [
    'There is a cryptic secret hidden by the creators of this hunt and it is your job, intepid hunters, to hunt for them and decode what they mean! May the codes be with you, on your trek.',
    'One of the biggest books you\'ll ever see, is there in VIT. Hidden in there, the answer to this question lays bare. It\'s size hides a secret. Oh! You haven\'t taken a peek yet? Find the page, the line. Translate it, and the points arethine. (Note:This question involves no',
    'Contact the musicians',
    'You cut me on a table, but I\'m never eaten.',
    'A band that doesn\'t play instruments but has plenty of styles.',
    'Flip me open, clap me shut. Whenever you meet a rut, step away and rest your eyes. My glowing screen you can\'t disguise. '
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

class Questions extends StatelessWidget {
  const Questions({super.key});
  @override
  Widget build(context) {
    final itemListNotifier = Provider.of<QuestionSet>(context);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 221, 210),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 80),
            Expanded(
              child: Stack(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: 'Drop it like it\'s hot',
                          filled: true,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          fillColor: Color.fromARGB(255, 237, 246, 249),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Q1) Kling-on Kirk',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 2),
                            child: Text(
                              '250 Points',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FirstBlood(),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(150, 0, 0, 0)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Card(
                      elevation: 10,
                      color: const Color.fromARGB(255, 237, 246, 249),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      semanticContainer: true,
                      margin: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          width: 340,
                          height: 200,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                child: Text(
                                  itemListNotifier.getCurrentItem(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Poppins-Bold'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    itemListNotifier.previousItem();
                  },
                  icon: const Icon(
                    Icons.arrow_left,
                    size: 60,
                    color: Color.fromARGB(255, 131, 197, 190),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: QRbutton(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {
                      itemListNotifier.nextItem();
                    },
                    icon: const Icon(
                      Icons.arrow_right,
                      size: 60,
                      color: Color.fromARGB(255, 131, 197, 190),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        appBar: AppBar(
          //APP BAR
          title: const Text(
            'Phase-1',
            style: TextStyle(color: Colors.black, fontFamily: 'Poppins-Bold'),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 237, 246, 249),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 237, 246, 249),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 237, 246, 249),
              activeColor: Color.fromARGB(255, 224, 131, 97),
              tabBackgroundColor: Color.fromARGB(255, 131, 197, 190),
              padding: EdgeInsets.all(16),
              gap: 8,
              haptic: true,
              // onTabChange: (index) {
              //   print(index);
              // },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.question_answer_outlined,
                  text: 'Questions',
                ),
                GButton(
                  icon: Icons.leaderboard,
                  text: 'Leaderboard',
                ),
                GButton(
                  icon: Icons.account_circle_outlined,
                  text: 'My Profile',
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
