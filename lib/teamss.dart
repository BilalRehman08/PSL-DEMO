import 'package:flutter/material.dart';

class Teammss extends StatefulWidget {
  @override
  _TeammssState createState() => _TeammssState();
}

class _TeammssState extends State<Teammss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cardd(
              'ABC',
              'https://superstarsbio.com/wp-content/uploads/2018/08/Shoaib-Malik.png',
              's',
              's',
              's')
        ],
      ),
    );
  }
}

Widget cardd(String name, String image, String runs, String match, String sr) {
  return Card(
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      SizedBox(height: 10),
      Container(
          height: 110,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          )),
      SizedBox(width: 10),
      Container(
          height: 110,
          width: 200,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      letterSpacing: -0.3),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      //style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                            text: match,
                            style: TextStyle(color: Colors.black54)),
                      ]),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      //style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                            text: runs,
                            style: TextStyle(color: Colors.black54)),
                        TextSpan(
                          text: '   \$90',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                SizedBox(height: 10),
                Text(
                  sr,
                  style: TextStyle(color: Colors.black54),
                )
              ]))
    ]),
  );
}
