import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/contacts_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.orange;
  int _currentIndex = 0;
  List<Widget> pageList = List();
  @override
  void initState() {
    super.initState();
    pageList..add(HomeScreen())..add(ContactsScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '对话',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '联系人',
                style: TextStyle(color: _BottomNavigationColor),
              ))
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          // tap事件
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
