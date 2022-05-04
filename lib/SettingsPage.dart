// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'Settings_item.dart';

List iconsSettings = [
  Icons.face,
  Icons.shopify,
  Icons.key,
  Icons.chat,
  Icons.notifications,
  Icons.storage,
  Icons.help,
  Icons.group
];

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 94, 84),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Settings'),
      ),
      body: Center(
          child: new ListView.builder(
        itemCount: iconsSettings.length,
        itemBuilder: (context, index) => new Column(
          children: <Widget>[
            const Divider(
              height: 7.0,
              thickness: 0,
              color: Colors.white,
            ),
            new ListTile(
              visualDensity: const VisualDensity(vertical: -1.5),
              leading: Container(
                height: double.infinity,
                child: Icon(
                  iconsSettings[index],
                  color: const Color.fromARGB(255, 7, 94, 84),
                ),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    SettingsItemData[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.1,
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  SettingsItemData[index].message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
