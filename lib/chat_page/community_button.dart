import 'package:flutter/material.dart';

class CommunityButton extends StatefulWidget {
  final String title;
  final bool isPressed;
  const CommunityButton(
      {super.key, required this.title, required this.isPressed});

  @override
  State<CommunityButton> createState() => _CommunityButtonState();
}

class _CommunityButtonState extends State<CommunityButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 20,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: widget.isPressed
              ? Colors.white
              : const Color.fromRGBO(0, 0, 0, 0),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isPressed
                  ? const Color.fromRGBO(0, 0, 0, 1)
                  : Colors.white,
              fontFamily: "LeagueSpartan",
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
