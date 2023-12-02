import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  const RestartButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            backgroundColor: const Color.fromARGB(255, 171, 130, 7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onTap,
        icon: const Icon(Icons.restart_alt_rounded),
        label: const Text(
          "Restart Quiz",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ));
  }
}
