import 'package:flutter/material.dart';

class RecieverCard extends StatelessWidget {
  const RecieverCard({super.key});

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
                    child: const Text(
                      "meow meow meow meow meow meow meow",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "LeagueSpartan",
                        height: 0.9,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      "https://i.pinimg.com/originals/83/10/ab/8310ab709f70727b92fa1a6917897c82.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
