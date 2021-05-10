import 'package:count/count.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Count Down',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String countDown = 'Loading';

  @override
  Widget build(BuildContext context) {
    //List of Date to countDown
    List<DateTime> s = [
      DateTime.utc(2022),
      DateTime.utc(2021),
      DateTime(2021, 2, 7)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(" yash"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Expanded(
              child: ListView(
                children: List.generate(3, (index) {
                  countDown = CountDown()
                      .timeLeft(s[index], 'Time Ended', longDateName: true);
                  return Text(
                    countDown,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
