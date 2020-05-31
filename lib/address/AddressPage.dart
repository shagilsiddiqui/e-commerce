


import 'file:///D:/flutterProjects/ecommerce_sample/lib/Cart/PaymentPage.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  Position position;
  String deliveryType;
  String address;

  @override
  void initState() {
    //_getCurrentLocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getMap(),
            getAddress(),
            getRadioButtons(),
            selectAddress(),
            getPromo(),
            getCheckout(),
          ],
        ),
      ),
    );

}

  getMap() {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Center(
        child: Text("MAP"),
      ),
    );
  }

  getAddress() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        color: Colors.grey,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Current Address:"),
        ),
      ),
    );
  }

  getRadioButtons() {
    return SizedBox(
      height: 100,

      child: ListView(

      scrollDirection: Axis.vertical,
      children: <Widget>[
      RadioListTile(
        activeColor: Colors.redAccent,
        value: "door",
        groupValue: deliveryType,
        onChanged: (value){
          deliveryType=value;
        },
        title: Text("Door Delivery"),
      ),
      RadioListTile(
        activeColor: Colors.redAccent,
        title: Text("Self Pickup"),
        value: "self",
        groupValue: deliveryType,
        onChanged: (value){
          deliveryType=value;
        },
      ),
      ],
      ),
    );
  }

  selectAddress() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.redAccent,
              elevation: 15,
              child: RadioListTile(
                activeColor: Colors.white,
                value: "1",
                groupValue: address,
                onChanged: (value){
                  address=value;
                },
                title: Text("Address 1"),


              ),

            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.redAccent,
              elevation: 15,
              child: RadioListTile(
                activeColor: Colors.white,
                value: "2",
                groupValue: address,
                onChanged: (value){
                  address=value;
                },

                title: Text("Address 2"),

              ),

            ),
          ],
        ),
      ),
    );
  }

  getPromo() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Enter Promocode"
        ),
      ),
    );
  }

  getCheckout() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.redAccent,
        child: Text("Proceed to Payment"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage()));
        },
      ),
    );
  }


}

//getMap() {
//  return Padding(
//    padding: EdgeInsets.all(10),
//    child: GoogleMap(
//      initialCameraPosition: CameraPosition(
//          target: LatLng(position.latitude, position.longitude),
//          zoom: 12
//      ),
//    ),
//  );
//}
//
//_getCurrentLocation() {
//  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
//
//  geolocator
//      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
//      .then((Position position) {
//    setState(() {
//      position = position;
//
//
//    });
//  }).catchError((e) {
//    print(e);
//  });
//}
