import 'package:flutter/material.dart';

class Fielders extends StatefulWidget {
  @override
  _FieldersState createState() => _FieldersState();
}

class _FieldersState extends State<Fielders> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TOP 5 FIELDERS")),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            cardd(
                'FAKHAR ZAMAN (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Fakhar-Zaman-1-450x480.png',
                'Matches: 12',
                'Catches: 10',
                'Season: 2020'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'KIERON POLLARD (PZ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Kieron-Pollard.png',
                'Matches: 13',
                'Catches: 10',
                'Season: 2019'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'M NAWAZ (QG)',
                'https://superstarsbio.com/wp-content/uploads/2018/08/Mohammad-Nawaz.png',
                'Matches: 9',
                'Catches: 8',
                'Season: 2020'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'JP DUMINY (IU)',
                'https://nation.com.pk/print_images/medium/2018-03-25/playing-psl-final-in-karachi-a-big-occasion-duminy-1521927336-1178.jpg',
                'Matches: 10',
                'Catches: 8',
                'Season: 2018'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'KIERON POLLARD (KK)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Kieron-Pollard.png',
                'Matches: 10',
                'Catches: 8',
                'Season: 2017'),
          ],
        ),
      ),
    );
  }
}

Widget cardd(
    String name, String image, String match, String catchh, String season) {
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
                            text: catchh,
                            style: TextStyle(color: Colors.black54)),
                      ]),
                ),
                SizedBox(height: 10),
                Text(
                  season,
                  style: TextStyle(color: Colors.black54),
                )
              ]))
    ]),
  );
}
