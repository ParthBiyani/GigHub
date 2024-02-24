import 'package:flutter/material.dart';
import 'package:git_hub/chat_page/senderMessageCard.dart';

class uiPage extends StatefulWidget {
  const uiPage({super.key});

  @override
  State<uiPage> createState() => _uiPageState();
}

class _uiPageState extends State<uiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/chat_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150),
            SizedBox(height: 30),
            SenderCard(),
          ],
        ),
      ),
    );
  }
}
