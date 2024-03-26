import 'package:flutter/material.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '';

  Future _openDetails2() async {
    String name = "Jack";

    String? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return DetailsPage(name: name);
        },
      ),
    );

    if (result == null) return;

    if (result.isNotEmpty) {
      setState(() {
        text = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                _openDetails2();
              },
              child: const Text(
                'Details Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
