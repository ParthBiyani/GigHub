import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
  final message = TextEditingController();
  List<Widget> messages = [
    const SenderCard(
      message: "Heyy.. How is everyone?",
    ),
    const SenderCard(
      message: "Wanted to clearify certain things about video editing",
    ),
    RecieverCard(message: "Yeaa broo.. sure.. would love to help"),
    const SenderCard(
      message: "Which software is best for video editing?",
    ),
    RecieverCard(message: "Depends on you.. I prefer Adobe Premiere Pro"),
    const SenderCard(
      message: "Okhh",
    ),
  ];
  List<Widget> communities = [
    const CommunityButton(title: "video editing", isPressed: true),
    const CommunityButton(title: "app dev", isPressed: false),
    const CommunityButton(title: "web dev", isPressed: false),
  ];

  @override
  void dispose() {
    message.dispose();
    super.dispose();
  }

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
            const SizedBox(height: 160),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: communities.length,
                  itemBuilder: (context, index) {
                    return communities[index];
                  }),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 6,
              child: ListView.builder(
                  dragStartBehavior: DragStartBehavior.down,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return messages[index];
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 40,
                child: TextField(
                  controller: message,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: "enter message",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: "LeagueSpartan",
                    ),
                    suffixIcon: GestureDetector(
                      child: const Icon(Icons.send),
                      onTap: () {
                        setState(() {
                          print("In onTap");
                          messages.add(RecieverCard(message: message.text));
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
