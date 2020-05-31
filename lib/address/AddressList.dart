

import 'package:flutter/material.dart';

class AddressListPage extends StatefulWidget {
  @override
  _AddressListPageState createState() => _AddressListPageState();
}

class _AddressListPageState extends State<AddressListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

      ),

      appBar: AppBar(
        title: Text("My Addresses"),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.redAccent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Table(
                columnWidths: {0:FractionColumnWidth(0.2)},
                children: [
                  TableRow(
                    children:[
                      Icon(Icons.person),
                      Text("Name")
                    ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.phone),
                        Text("Phone Number")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.location_city),
                        Text("City")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.home),
                        Text("State")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.fiber_pin),
                        Text("Pin Code")
                      ]
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.redAccent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Table(
                columnWidths: {0:FractionColumnWidth(0.2)},
                children: [
                  TableRow(
                      children:[
                        Icon(Icons.person),
                        Text("Name")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.phone),
                        Text("Phone Number")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.location_city),
                        Text("City")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.home),
                        Text("State")
                      ]
                  ),
                  TableRow(
                      children:[
                        Icon(Icons.fiber_pin),
                        Text("Pin Code")
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
