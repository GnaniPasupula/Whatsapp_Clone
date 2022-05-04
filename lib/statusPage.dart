// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'statusPage_items.dart';

class statusPage extends StatefulWidget {
  @override
  _statusPageState createState() => _statusPageState();
}

class _statusPageState extends State<statusPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: const NetworkImage(
                          "https://exploringbits.com/wp-content/uploads/2022/01/Luffy-PFP-1-1024x1024.jpg"),
                    ),
                    const Positioned(
                      top: 40,
                      left: 40,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(Icons.add, size: 20),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 7, 94, 84),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: ListTile(
                    title: Text(
                      'My Status',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Text('Tap to add status update'),
                    ),
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  'Recent updates',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: StatusPageItemData.length,
                itemBuilder: (contextss, index) => new Column(
                  children: <Widget>[
                    const Divider(
                      height: 7.0,
                      thickness: 0,
                      color: Colors.white,
                    ),
                    new ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      visualDensity: VisualDensity(vertical: -1.5),
                      leading: new CircleAvatar(
                        radius: 30,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: new NetworkImage(
                            StatusPageItemData[index].avatarUrl),
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            StatusPageItemData[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      subtitle: new Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new Text(
                          StatusPageItemData[index].message,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  'Viewed updates',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: StatusPageItemData2.length,
                itemBuilder: (contextss2, indexs) => new Column(
                  children: <Widget>[
                    const Divider(
                      height: 7.0,
                      thickness: 0,
                      color: Colors.white,
                    ),
                    new ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      visualDensity: VisualDensity(vertical: -1.5),
                      leading: new CircleAvatar(
                        radius: 30,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: new NetworkImage(
                            StatusPageItemData2[indexs].avatarUrl),
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            StatusPageItemData2[indexs].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      subtitle: new Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new Text(
                          StatusPageItemData2[indexs].message,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
