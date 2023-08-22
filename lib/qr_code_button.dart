import 'package:flutter/material.dart';

class QRbutton extends StatelessWidget {
  const QRbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.qr_code_2,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 226, 149, 120),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      label: const Text(
        'Scan QR Code',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Poppins-Bold',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
