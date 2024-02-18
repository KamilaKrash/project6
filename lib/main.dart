import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Перейти к второму экрану и передать данные
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SecondScreen(data: 'Привет, я с экрана Краш!')),
            );
          },
          child: Text('перейти к экрану Ками'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String data;

  SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            ElevatedButton(
              onPressed: () {
                // Вернуться на главный экран и передать данные
                Navigator.pop(context, 'Привет, я с экрана Краш!');
              },
              child: Text('Вернуться'),
            ),
          ],
        ),
      ),
    );
  }
}
