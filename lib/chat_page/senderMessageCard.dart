import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SenderCard extends StatelessWidget {
  const SenderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
                padding: EdgeInsets.all(13),
                child: CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/83/10/ab/8310ab709f70727b92fa1a6917897c82.jpg"),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: const Text(
                      "meow meow meow meow meow meow meow meow meow meow meow meow meow meow",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "LeagueSpartan",
                        height: 0.9,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Text(
                          "The Dog",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      ),
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
                      Container(
                        child: const Text(
                          "13:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      ),
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
