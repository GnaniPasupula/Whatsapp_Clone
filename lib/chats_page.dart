// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'chat_item.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatItemData.length,
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          const Divider(
            height: 7.0,
            thickness: 0,
            color: Colors.white,
          ),
          new ListTile(
            visualDensity: VisualDensity(vertical: -1.5),
            leading: new CircleAvatar(
              radius: 30,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(chatItemData[index].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  chatItemData[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.1,
                ),
                new Text(
                  chatItemData[index].time,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                chatItemData[index].message,
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
