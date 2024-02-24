import 'package:flutter/material.dart';

class CommunityButton extends StatefulWidget {
  const CommunityButton({super.key});

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
          color: const Color.fromRGBO(0, 0, 0, 0),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            "video editing",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "LeagueSpartan",
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
