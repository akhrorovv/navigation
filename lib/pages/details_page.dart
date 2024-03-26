import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id = 'home_page';
  final String? name;

  const DetailsPage({super.key, this.name});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  _backToHomePage() {
    String text = "Welcome Back";
    Navigator.of(context).pop(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Details Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Hi, ${widget.name}'),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              color: Colors.white,
              onPressed: () {
                _backToHomePage();
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
