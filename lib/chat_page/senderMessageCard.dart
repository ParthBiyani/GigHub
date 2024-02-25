// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SenderCard extends StatefulWidget {
  final String message;
  const SenderCard({super.key, required this.message});

  @override
  State<SenderCard> createState() => _SenderCardState();
}

class _SenderCardState extends State<SenderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(63, 142, 252, 1),
              Color.fromRGBO(10, 39, 99, 0.76),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(7),
                child: CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/83/10/ab/8310ab709f70727b92fa1a6917897c82.jpg"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.65,
                    child: Text(
                      widget.message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "LeagueSpartan",
                        height: 0.9,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              "Tanya",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "LeagueSpartan",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Container(
                        child: const Text(
                          "25/2/24",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        child: const Text(
                          "13:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
