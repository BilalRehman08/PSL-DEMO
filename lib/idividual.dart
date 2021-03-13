import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psl/Login.dart';
import 'package:psl/fielders.dart';
import 'package:psl/home.dart';
import 'package:psl/batsman.dart';

class Individual extends StatefulWidget {
  @override
  _IndividualState createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                  gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                    Colors.green[800],
                    Colors.green[500],
                    Colors.green[200]
                  ])),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                      SizedBox(width: 10),
                      Text('INDIVIDUAL PERFOMANCES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.5, right: 12.5),
                    child: Column(
                      children: <Widget>[
                        Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 10.0,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Batsmans())),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.235,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.23,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.135,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "images/individual.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text("TOP BATSMANS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 10.0,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login())),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.235,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.23,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.155,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage("images/bowler.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text("TOP BOWLERS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 10.0,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Fielders())),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.235,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.26,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "images/fielder.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text("TOP FIELDERS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      ])),
    ));
  }
}
