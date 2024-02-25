import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(73),
        ),
      ),
      height: 72,
      width: MediaQuery.of(context).size.width / 2,
      child: const Center(
        child: Text(
          "Submit",
          style: TextStyle(
            fontFamily: "LeagueSpartan",
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
