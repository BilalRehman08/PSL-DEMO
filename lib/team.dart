import 'package:flutter/material.dart';

class Teams extends StatefulWidget {
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TEAM RANKINGS")),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            cardd(
                'MULTAN SULTAN',
                'https://pbs.twimg.com/profile_images/1219941008420605953/ywWk_Lgh_400x400.jpg',
                'Wins: 6',
                'Loss: 2',
                'Points: 14'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'KARACHI KINGS',
                'https://i.pinimg.com/originals/7e/a4/27/7ea427204cc5ab17f52588bbfe5ed49a.png',
                'Wins: 5',
                'Loss: 4',
                'Points: 11'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'LAHORE QALANDARS',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRBTVjAkrX1mBqcE6955iTVrftLCjace1ACQ&usqp=CAU',
                'Wins: 5',
                'Loss: 5',
                'Points: 10'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'PESHAWAR ZALMI',
                'https://i.pinimg.com/originals/b6/61/3d/b6613d2f763adb33e88232906553655a.png',
                'Wins: 4',
                'Loss: 5',
                'Points: 9'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'QUETTA GLADIATORS',
                'https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/313500/313522.logo.png',
                'Wins: 4',
                'Loss: 5',
                'Points: 9'),
            SizedBox(
              height: 10,
            ),
            cardd(
                'ISLAMABAD UNITEDS',
                'https://www.geo.tv/assets/front/psl-assets/images/islamabad-united.png',
                'Wins: 3',
                'Loss: 6',
                'Points: 7'),
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
