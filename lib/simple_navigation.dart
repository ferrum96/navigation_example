import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Routing and Navigation'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.purpleAccent,
        child: TextButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => Page2());
            Navigator.push(context, route);
          },
          child: Text(
            'Move to Page 2',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.purpleAccent,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Move to HomePage',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
