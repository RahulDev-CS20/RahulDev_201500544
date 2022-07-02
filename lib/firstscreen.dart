import 'package:flutter/material.dart';

void main() => runApp(const firstscreen());

class firstscreen extends StatelessWidget {
  const firstscreen({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ID',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Training_completion(),
                      ),
                    );
                  },
                )),
          ],
        ));
  }
}

class Training_completion extends StatelessWidget {
  // const Training_completion({Key? key}) : super(key: key);
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Hi,Rahul",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 50,
                left: 10,
              ),
              child: Container(
                child: Text(
                  "You have Successfully Completed \n Hybrid Mobile App Development Course.",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "INSTRUCTOR NAME",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8.0, right: 8.0, bottom: 30),
              child: Container(
                child: Text(
                  "Pankaj Kapoor",
                  style: TextStyle(fontSize: 24),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Container(
              child: Text(
                "Date ${today.day}-${today.month}-${today.year}",
                style: TextStyle(fontSize: 20),
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}
