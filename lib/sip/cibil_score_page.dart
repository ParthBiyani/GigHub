import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CibilScorePage extends StatefulWidget {
  CibilScorePage({super.key});

  @override
  State<CibilScorePage> createState() => _CibilScorePageState();
}

var cibil;

Future<void> fetchUsers() {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  return users.get().then((QuerySnapshot snapshot) {
    snapshot.docs.forEach((doc) {
      cibil = doc.data();
    });
  }).catchError((error) => print("Failed to fetch users: $error"));
}

class _CibilScorePageState extends State<CibilScorePage> {
  var di = fetchUsers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/cibil_graph.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Cibil Score: ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cibil['cibil_score'].toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
