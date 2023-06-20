import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blueAccent, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blueAccent, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blueAccent, Icons.share, 'SHARE'),
  ],
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(16),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              "Nike Jordan X LV",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'RP 112.999.999',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      )),
      Icon(
        Icons.star,
        color: Color.fromARGB(255, 233, 29, 14),
      ),
      const Text('5'),
    ],
  ),
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'The Louis Vuitton x Nike Air Force 1 Low “White/Green” is a special collaboration between the storied high fashion house and Nike that was directed by the late Virgil Abloh. Produced by Louis Vuitton, Nike, and Abloh in 2022, the “White/Green” features a two-tone color block of white and green that replicates the color block of original Nike Dunk colorways from 1985. This highly sought after collaboration for the Air Force 1 features a white leather base with Louis Vuitton’s famous monogram print stamped into the material. A contrasting green textile with the Parisian fashion brand’s aforementioned pattern is found on the overlays and Swoosh. Signature details from Abloh’s previous collaborations with Nike under his Off-White clothing brand include a lime green hang tag on the sides, and printed “AIR” branding alongside classic Air Force 1 “AIR” detailing on the lateral side of the midsole.',
    softWrap: true,
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/shoes.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}
