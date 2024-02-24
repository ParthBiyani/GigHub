import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(62, 146, 204, 1)),
    ChartData('Steve', 55, Color.fromRGBO(216, 49, 91, 1)),
    ChartData('Jack', 34, Color.fromRGBO(255, 250, 255, 1)),
  ];
  String earning = "1000";

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
        decoration: BoxDecoration(
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
                        Text(
                          "Total Earning:",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          earning,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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
                        dotWidget(Color.fromRGBO(228, 0, 124, 1), "text 1"),
                        dotWidget(Color.fromRGBO(62, 146, 204, 1), "text 2"),
                        dotWidget(Color.fromRGBO(255, 250, 255, 1), "text 3"),
                      ],
                    ),
                    SizedBox(height: 20),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      height: MediaQuery.of(context).size.height / 3.4,
      child: Expanded(
        child: ListView.builder(
            itemCount: financialInfo.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 35,
                  horizontal: MediaQuery.of(context).size.width / 15,
                ),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromRGBO(65, 145, 255, 1),
                      Color.fromRGBO(10, 36, 99, 1),
                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Text(
                  financialInfo[index],
                  style: TextStyle(
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
          Text(
            dotText,
            style: TextStyle(
              color: Colors.white,
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
