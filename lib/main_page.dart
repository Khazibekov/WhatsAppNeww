import 'package:flutter/material.dart';
import 'package:whatsapp_new_design/home_screen.dart';
import 'package:whatsapp_new_design/updates_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectIndex = 0;
  final List<Widget> _pages = [
    // screen1
    HomeScreen(),
    // screen2
    UpdatesScreen(),
    // screen3
    Container(),
    // screen4
    Container(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  Widget buildNavBarItem(
      IconData filledIcon, IconData outlinedIcon, String text, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              decoration: BoxDecoration(
                color: _selectIndex == index ? Color(0xFFD8FDD2) : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                _selectIndex == index ? filledIcon : outlinedIcon,
                size: 28,
                color: _selectIndex == index ? Color(0xFF125E3A) : Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    _selectIndex == index ? FontWeight.w900 : FontWeight.w500,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black12,
              width: 0.4,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Icons.message, Icons.message_outlined, "Chats", 0),
            buildNavBarItem(Icons.update, Icons.update_outlined, "Update", 1),
            buildNavBarItem(
                Icons.people, Icons.people_outline, "Communications", 2),
            buildNavBarItem(Icons.call, Icons.call_outlined, "Chats", 3),
          ],
        ),
      ),
    );
  }
}
