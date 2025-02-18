import 'package:flutter/material.dart';
import 'package:whatsapp_new_design/widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 1),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(
              top: 6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "images/profile1.jpg",
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Programmer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(
                Icons.videocam_outlined,
                size: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(
                Icons.call_outlined,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(Icons.more_vert, size: 28),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/background.png",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 100),
          child: Column(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 8),
                  ],
                ),
                child: Text(
                  "Messages and calls are ent-to -end encrypted ,No one outside of this chat can read or listen.Tap to learn more  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ), //Messages here,i will use chat samples just for example
              ChatSamples(),
              ChatSamples(),
              ChatSamples(),
              ChatSamples(),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attachment_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF1DA75E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.mic,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
