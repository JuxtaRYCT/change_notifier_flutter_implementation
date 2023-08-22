import 'package:flutter/material.dart';

class FirstBlood extends StatelessWidget {
  const FirstBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 21, 0, 56),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: const Text(
        'First Blood\n Available',
        style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins-Bold',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 226, 149, 120)),
      ),
    );
  }
}
