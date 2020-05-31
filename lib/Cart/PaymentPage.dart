
import 'package:ecommercesample/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

   final style = TextStyle(
    fontSize: 20,
    color: Colors.redAccent,
    fontWeight: FontWeight.w500
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(child: Icon(Icons.home),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },)
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(20),child: Text("Choose your payment option:",style: TextStyle(color: Colors.redAccent,fontSize: 25),)),
        Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            height: 400,
            child: ListView(
              children: <Widget>[
                Card(

                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.check_circle_outline,color: Colors.redAccent,),
                    title: Text("Cash On Delivery",style: style,),
                  ),
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.check_circle_outline,color: Colors.redAccent,),
                    title: Text("Credit Card",style: style,),
                  ),
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.check_circle_outline,color: Colors.redAccent,),
                    title: Text("Self Pickup",style: style,),
                  ),
                ),
              ],
            ),
            
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: RaisedButton(
            color: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),
            child: Padding(padding: EdgeInsets.all(10),child: Text("Payment",style: TextStyle(fontSize: 25),)),
            onPressed: (){
              showAlert();
            },
            
          ),
        ),
      ],
    );
  }

  void showAlert() async {
    return showDialog(context: context,
     child: AlertDialog(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
       title: Text("Payment success",style: style,),
       content: Text("Order Number: 123456"),
       actions: <Widget>[
         FlatButton(
           child: Text("Close"),
           onPressed: (){
             Navigator.of(context).pop();
           },
         )
       ],
     )
    );
  }
}
