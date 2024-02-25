import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ChartData> chartData = [
    ChartData('David', 25, const Color.fromRGBO(62, 146, 204, 1)),
    ChartData('Steve', 55, const Color.fromRGBO(216, 49, 91, 1)),
    ChartData('Jack', 34, const Color.fromRGBO(255, 250, 255, 1)),
  ];
  String earning = "72,425";

  List<String> financialInfo = [
    "Your Dues: ",
    "Mean Income: ",
    "Maximum Income: ",
    "Minimum Income: "
  ];
  List<String> financialInfo2 = [
    "- ₹3,000",
    "+ ₹70,521",
    "+ ₹79,635",
    "+ ₹23,753"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.7,
                  // color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "Total Earning:",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "LeagueSpartan",
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          earning,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "LeagueSpartan",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    DoughtnutGraph(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        dotWidget(
                            const Color.fromRGBO(228, 0, 124, 1), "Fiverr"),
                        dotWidget(
                            const Color.fromRGBO(62, 146, 204, 1), "YouTube"),
                        dotWidget(
                            const Color.fromRGBO(255, 250, 255, 1), "UpWork"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    InfoCards(context)
                  ],
                ),
              ],
            ),
          ],
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
      height: MediaQuery.of(context).size.height / 3.85,
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
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        financialInfo[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        financialInfo2[index],
                        style: TextStyle(
                          color: (index == 0)
                              ? Colors.red
                              : Color.fromRGBO(0, 255, 0, 0.9),
                          fontFamily: "LeagueSpartan",
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Container DoughtnutGraph() {
    return Container(
      child: SfCircularChart(
        series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData, String>(
            cornerStyle: CornerStyle.bothCurve,
            dataSource: chartData,
            innerRadius: '80%',
            animationDuration: 750,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }

  Container dotWidget(Color dotColor, String dotText) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: dotColor,
              borderRadius: BorderRadius.circular(51),
            ),
          ),
          SizedBox(height: 5),
          Text(
            dotText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "LeagueSpartan",
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
