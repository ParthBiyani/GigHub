import 'package:flutter/material.dart';
import 'package:git_hub/sip/cibil_score_page.dart';
import 'package:git_hub/sip/submit_button.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final pan = TextEditingController();
  final dob = TextEditingController();
  final pinCode = TextEditingController();
  final mobileNo = TextEditingController();
  bool allFieldsFilled = true;

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    pan.dispose();
    dob.dispose();
    pinCode.dispose();
    mobileNo.dispose();
    super.dispose();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Empty Fields'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please Fill all the details !!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/info_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 170),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "first name",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: firstName,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "last name",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: lastName,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "pan number",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: pan,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "dob",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: dob,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: "DD/MM/YYYY",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "pin code",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: pinCode,
                        maxLength: 6,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "mobile number",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "LeagueSpartan",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: mobileNo,
                        maxLength: 10,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            if (firstName.value.text.isEmpty ||
                                lastName.value.text.isEmpty ||
                                pan.value.text.isEmpty ||
                                dob.value.text.isEmpty ||
                                mobileNo.value.text.isEmpty ||
                                pinCode.value.text.isEmpty) {
                              setState(() {
                                _showMyDialog();
                              });
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CibilScorePage(),
                                ),
                              );
                            }
                          },
                          child: const SubmitButton(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
