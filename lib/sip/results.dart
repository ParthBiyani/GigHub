import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<String> financialInfo = [
    "Your Dues: ",
    "Mean Income: ",
    "Maximum Income: ",
    "Minimum Income: "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sip_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
                child: const Center(
                  child: Text(
                    "- ₹5000",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontFamily: "LeagueSpartan",
                    ),
                  ),
                ),
              ),
            ),
            CarouselSlider(
              items: [
                card(context, "SBI Focused Fund"),
                card(context, "Parag Parikh Large Cap Fund"),
                card(context, "Tata Mid Cap Fund"),
                card(context, "Nippon India Gold Bees"),
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 4.7,
              ),
            ),
            InfoCards(context)
          ],
        ),
      ),
    );
  }

  Container card(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 30, fontFamily: "LeagueSpartan", color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Container InfoCards(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      height: MediaQuery.of(context).size.height / 3.8,
      child: Expanded(
        child: ListView.builder(
            itemCount: financialInfo.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 35,
                  horizontal: MediaQuery.of(context).size.width / 15,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromRGBO(65, 145, 255, 1),
                      Color.fromRGBO(10, 36, 99, 1),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Text(
                  financialInfo[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
