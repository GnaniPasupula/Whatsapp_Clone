import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
////////////////////
import 'SettingsPage.dart';
import 'callsPage.dart';
import 'chats_page.dart';
import 'camera_page.dart';
import 'statusPage.dart';

List fabIcon = [
  Icons.message,
  Icons.camera_alt,
  Icons.call,
];

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => homePage(),
      '/settings': (context) => SettingsPage(),
    },
  ));
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int fabicon_index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp Business',
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 7, 94, 84),
              child: Icon(fabIcon[fabicon_index]),
            ),
            appBar: AppBar(
              bottom: TabBar(
                onTap: (tabIndex) {
                  setState(() {
                    fabicon_index = tabIndex - 1;
                  });
                },
                tabs: const [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
              title: const Text('WhatsApp Business'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                PopupMenuButton<String>(onSelected: (value) {
                  if (value == "Settings") {
                    Navigator.pushNamed(context, '/settings');
                  }
                }, itemBuilder: ((contexst) {
                  return [
                    const PopupMenuItem(
                      value: 'Business tools',
                      child: Text('Business tools'),
                    ),
                    const PopupMenuItem(
                      value: 'New group',
                      child: Text('New group'),
                    ),
                    const PopupMenuItem(
                      value: 'New broadcast',
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem(
                      value: 'Labels',
                      child: Text('Labels'),
                    ),
                    const PopupMenuItem(
                      value: 'Linked devices',
                      child: Text('Linked devices'),
                    ),
                    const PopupMenuItem(
                      value: 'Starred messages',
                      child: Text('Starred messages'),
                    ),
                    const PopupMenuItem(
                      value: 'Settings',
                      child: Text('Settings'),
                    ),
                  ];
                }))
              ],
              backgroundColor: const Color.fromARGB(255, 7, 94, 84),
            ),
            body: TabBarView(children: <Widget>[
              ChatPage(),
              ChatPage(),
              statusPage(),
              callsPage(),
            ]),
          ),
        ));
  }
}
