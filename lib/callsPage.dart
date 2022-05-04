// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'callPage_items.dart';

List iconsCalls = [
  Icons.call,
  Icons.call_missed,
  Icons.video_call,
];

class callsPage extends StatefulWidget {
  @override
  _callsPageState createState() => _callsPageState();
}

class _callsPageState extends State<callsPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: iconsCalls.length,
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
              backgroundImage: new NetworkImage(CallItemData[index].avatarUrl),
            ),
            trailing: new Icon(
              iconsCalls[index],
              color: const Color.fromARGB(255, 7, 94, 84),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  CallItemData[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.1,
                ),
              ],
            ),
            subtitle: new Container(
              child: new Text(
                CallItemData[index].message,
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
