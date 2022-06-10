import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Text Field Demo',
        home: Scaffold(
          appBar: AppBar(title: Text('Text Field Demo')),
          body: FirstScreenState(),
        ));
  }
}

class FirstScreenState extends StatefulWidget {
  String name = '';

  @override
  State<FirstScreenState> createState() => _FirstScreenStateState();
}

class _FirstScreenStateState extends State<FirstScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            decoration: const InputDecoration(
                hintText: 'Write youre name here', labelText: 'Your Name'),
            onChanged: (String value) {
              setState(() {
                name = value;
              });
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => new AlertDialog(
                        content: new Text('Hello, $name'),
                      ));
            },
            child: Text('Submit'),
          ),
        ]),
      ),
    );
  }
}
