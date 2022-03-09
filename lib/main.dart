import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),
  ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLvl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLvl++;
          });
        },
        backgroundColor: Colors.orangeAccent,
        child: const Text(
          '+',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
                backgroundColor: Colors.orangeAccent,
                radius: 50.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.orangeAccent,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.orangeAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
           const  Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ), Text(
              '$ninjaLvl',
              style: const TextStyle(
                color: Colors.orangeAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.orangeAccent,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'chun-li@gmail.com',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class test extends StatefulWidget {

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



