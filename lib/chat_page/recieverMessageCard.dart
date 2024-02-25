// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecieverCard extends StatefulWidget {
  String message;
  RecieverCard({super.key, required this.message});

  @override
  State<RecieverCard> createState() => _RecieverCardState();
}

class _RecieverCardState extends State<RecieverCard> {
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
              Color.fromRGBO(216, 49, 91, 1),
              Color.fromRGBO(10, 39, 99, 0.76),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
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
                              "Xavier",
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
              ),
              const Padding(
                padding: EdgeInsets.all(7),
                child: CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      "https://varnam.my/wp-content/uploads/2021/01/FB_IMG_1605666747087-2.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
