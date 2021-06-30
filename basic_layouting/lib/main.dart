import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic App',
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(
              'assets/image.jpg',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20.0,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pantai Teluk Peny',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Cilacap, Jawa Tengah',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xffffb800),
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text('4.5'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableIcon(
                  icon: Icons.call,
                  text: 'CALL',
                ),
                ReusableIcon(
                  icon: Icons.near_me,
                  text: 'ROUTE',
                ),
                ReusableIcon(
                  icon: Icons.share,
                  text: 'SHARE',
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                '\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pulvinar ipsum vel dapibus cursus. Cras nunc mi, suscipit id imperdiet pharetra, maximus eu magna. Vivamus a mauris a arcu facilisis pharetra. Mauris dapibus tempus diam, et aliquet orci scelerisque et. Mauris quis laoreet nulla. Praesent suscipit, erat venenatis rutrum semper, est metus tincidunt quam, nec blandit turpis lorem eget massa. Sed dictum non nunc vel aliquam. Proin sodales ac turpis vel maximus. Ut ac mi ac justo tincidunt porta sed ut orci. Cras euismod auctor massa, id condimentum nunc fermentum id. Sed ac imperdiet felis, vel scelerisque nibh. Praesent a dolor ut arcu ornare sagittis sed quis erat. Suspendisse potenti.\n\n\t\t\tVivamus commodo magna et mauris fermentum, non maximus lectus viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed diam erat, porttitor at ex eget, maximus facilisis neque. Nunc gravida molestie fermentum. Aenean ac laoreet tellus. Mauris id fringilla nisi, in feugiat nibh. Aenean tellus diam, venenatis eu lacus non, volutpat consectetur nunc. Duis mattis, mauris at hendrerit fringilla, dui ipsum tristique risus, vel laoreet quam eros quis quam. Suspendisse elementum vestibulum elit, a luctus nulla ultrices quis. Praesent fermentum augue eget tincidunt aliquam. Nulla nec feugiat nulla, ac sodales ligula.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  ReusableIcon({this.icon, this.text});

  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 29.0,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
