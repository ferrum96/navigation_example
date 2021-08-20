import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstHome(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
              return MaterialPageRoute(builder: (context) => FirstHome());
              break;
          case '/second':
              User user = settings.arguments as User;
              return MaterialPageRoute(
                  builder: (context) => SecondHome(user: user));
              break;
        }
      },
    );
  }
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            User user = User(name: 'Konstantin', age: 37);
            Navigator.pushNamed(context, '/second', arguments: user);
          },
          child: Text('Second Home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  final User user;

  SecondHome({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.user.name} - ${this.user.age}'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}
