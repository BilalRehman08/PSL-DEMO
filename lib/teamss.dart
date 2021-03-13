import 'package:flutter/material.dart';

class Teammss extends StatefulWidget {
  @override
  _TeammssState createState() => _TeammssState();
}

class _TeammssState extends State<Teammss> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TOP 10 BATSMANS")),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            cardd(
                'BABAR AZAM (KK)',
                'https://superstarsbio.com/wp-content/uploads/2018/08/Babar-Azam.png',
                'Innings: 11',
                'Runs(balls): 473 (381)',
                'Strike Rate: 124.14'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'FAKHAR ZAMAN (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Fakhar-Zaman-1-450x480.png',
                'Innings: 12',
                'Runs(balls): 325 (252)',
                'Strike Rate: 128.96'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'MUHAMMAD HAFEEZ (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Mohammad-Hafeez.png',
                'Innings: 12',
                'Runs(balls): 312 (249)',
                'Strike Rate: 125.30'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'BEN DUNK (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Ben-Dunk.png',
                'Innings: 10',
                'Runs(balls): 300 (179)',
                'Strike Rate: 167.59'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'CHRIS LYNN (LQ)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Chris-Lynn.png',
                'Innings: 8',
                'Runs(balls): 284 (158)',
                'Strike Rate: 179.74'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'SHAN MASOOD (MS)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Shan-Masood-1.png',
                'Innings: 10',
                'Runs(balls): 283 (221)',
                'Strike Rate: 128.05'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'SHOAIB MALIK (PZ)',
                'https://superstarsbio.com/wp-content/uploads/2018/08/Shoaib-Malik.png',
                'Innings: 8',
                'Runs(balls): 278 (202)',
                'Strike Rate: 137.62'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'ALEX HALES (KK)',
                'https://i.dailymail.co.uk/1s/2019/04/26/19/12760104-6964291-England_star_Alex_Hales_has_been_slapped_with_a_21_day_ban_for_u-a-13_1556302324727.jpg',
                'Innings: 7',
                'Runs(balls): 272 (183)',
                'Strike Rate: 148.63'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'LUKE RONCHI (IU)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/Luke-Ronchi-1.png',
                'Innings: 8',
                'Runs(balls): 266 (170)',
                'Strike Rate: 156.47'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'SHADAB KHAN (IU)',
                'https://superstarsbio.com/wp-content/uploads/2020/02/shadab-khan.png',
                'Innings: 8',
                'Runs(balls): 263 (165)',
                'Strike Rate: 159.39'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
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
