import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        centerTitle: true,

      ),
      body: getBody(),
    );
  }

  getBody() {
    return GridView.count(crossAxisCount: 2,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 400,
          width: 125,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipOval(child: Image.asset("assets/orange.jpg"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oranges",
                          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Rs.250/Kg",
                          style: TextStyle(color: Colors.black45),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "20 PTs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    showTotal(context);
                  },
                )
              ],
            ),
          ),
        ),

      ),

     
    ],);
  }

  void showTotal(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: 40,
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Total Rs.1100",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )));
        });
  }
}
