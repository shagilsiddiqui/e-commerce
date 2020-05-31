import 'package:ecommercesample/HomePage.dart';
import 'package:ecommercesample/NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Text("Skip"),
            onPressed: ()=>{

              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()))
            },
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0))),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/logo.png"),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Create your account",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 350,
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: "Enter your Phone Number",
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: "Enter your Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            child: Text("Login"),
                            onPressed: ()=> {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation())),
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(7),
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    "Or SignUp with:",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/SVGs/Icon awesome-google-plus-g.svg",
                        color: Colors.black,
                      ),
                      SvgPicture.asset(
                        "assets/SVGs/Icon awesome-facebook-f.svg",
                        color: Colors.black,
                      ),
                      SvgPicture.asset(
                        "assets/SVGs/Icon awesome-twitter.svg",
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
