import 'package:flutter/material.dart';

void main() {
  runApp(const PointCount());
}

class PointCount extends StatefulWidget {
  const PointCount({super.key});

  @override
  State<PointCount> createState() => _PointCountState();
}

class _PointCountState extends State<PointCount> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: const Text('Point Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamA',
                      style: const TextStyle(
                        fontSize: 100,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA = ++teamA;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 1 Point'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 2 Point'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 3 Point'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamB',
                      style: const TextStyle(
                        fontSize: 100,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB = ++teamB;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 1 Point'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 2 Point'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 3;
                          print('button 3b pressed');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Add 3 Point'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                textStyle: const TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                ),
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
