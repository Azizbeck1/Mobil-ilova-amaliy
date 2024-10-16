import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Modal oynani ko'rsatish funksiyasi
  void _showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Modal oyna'),
          content: Text('Bu modal oyna ichidagi kontentdir.'),
          actions: <Widget>[
            TextButton(
              child: Text('Bekor qilish'),
              onPressed: () {
                Navigator.of(context).pop(); // Oynani yopish
              },
            ),
            TextButton(
              child: Text('Davom ettirish'),
              onPressed: () {
                // Qo'shimcha harakatlarni bu yerda amalga oshirishingiz mumkin
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal oyna misoli'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context); // Tugmaga bosilganda modal oynani ko'rsatish
          },
          child: Text('Modal oynani ko‘rsatish'),
        ),
      ),
    );
  }
}
