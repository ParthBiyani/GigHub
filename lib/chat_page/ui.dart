import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git_hub/chat_page/community_button.dart';
import 'package:git_hub/chat_page/recieverMessageCard.dart';
import 'package:git_hub/chat_page/senderMessageCard.dart';

class uiPage extends StatefulWidget {
  const uiPage({super.key});

  @override
  State<uiPage> createState() => _uiPageState();
}

class _uiPageState extends State<uiPage> {
  List<Widget> messages = [
    SenderCard(),
    SenderCard(),
    RecieverCard(),
    SenderCard(),
    RecieverCard(),
    SenderCard(),
  ];
  List<Widget> communities = [
    CommunityButton(),
    CommunityButton(),
    CommunityButton(),
  ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: communities.length,
                  itemBuilder: (context, index) {
                    return communities[index];
                  }),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 7,
              child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return messages[index];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
