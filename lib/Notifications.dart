import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final items = List<String>.generate(
      20, (i) => "Two Kg Oranges for Rs.250 only ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notifications"),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  getBody() {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("Notification dismissed")));
              },
              background: Container(
                color: Colors.redAccent,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    title: Text("$item"),
                    leading: ClipOval(
                      child: Image.asset("assets/orange.jpg"),


                    ),
                    subtitle: Text("-Arun Merchants"),

                  ),
                ),
              ));
        });
  }
}
