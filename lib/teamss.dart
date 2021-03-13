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
          cardd('ABC',
              'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg')
        ],
      ),
    );
  }
}

Widget cardd(String name, String image) {
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
                        WidgetSpan(
                            child: Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.yellowAccent,
                        )),
                        TextSpan(
                            text: ' 5.0 (23 Review)',
                            style: TextStyle(color: Colors.black54)),
                      ]),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                      //style: Theme.of(context).textTheme.body1,
                      children: [
                        TextSpan(
                            text: '20 Pieces',
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
                  'Quantity: 1',
                  style: TextStyle(color: Colors.black54),
                )
              ]))
    ]),
  );
}
