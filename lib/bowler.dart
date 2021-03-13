import 'package:flutter/material.dart';

class Bowlers extends StatefulWidget {
  @override
  _BowlersState createState() => _BowlersState();
}

class _BowlersState extends State<Bowlers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TOP 5 BOWLERS")),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            cardd(
                'M HASNAIN (QG)',
                'https://nation.com.pk/print_images/large/2019-03-25/it-s-a-dream-come-true-says-rookie-debutant-hasnain-1553457100-8305.jpg',
                'Matches: 8',
                'Wickets: 14',
                'Economy: 9.14'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'SHAHEEN AFRIDI (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Shaheen-Afridi.png',
                'Matches: 7',
                'Wickets: 11',
                'Economy: 6.88'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'IMRAN TAHIR (MS)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Imran-Tahir-1.png',
                'Matches: 7',
                'Wickets: 10',
                'Economy: 7.42'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'M AMIR (KK)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Mohammad-Amir.png',
                'Matches: 7',
                'Wickets: 10',
                'Economy: 7.60'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'WAHAB RIAZ (PZ)',
                'https://superstarsbio.com/wp-content/uploads/2018/08/Wahab-Riaz.png',
                'Matches: 8',
                'Wickets: 10',
                'Economy: 8.44'),
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
