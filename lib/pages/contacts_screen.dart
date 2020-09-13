import 'package:flutter/material.dart';
class ContactsScreen extends StatefulWidget {
  ContactsScreen({Key key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('ContactsScreen')
         ),
         body:Center(
             child: Text('ContactsScreen')
           )
       ),
    );
  }
}