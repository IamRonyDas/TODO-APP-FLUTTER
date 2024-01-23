import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";
  //greet method
  void greetUser() {
    String username = myController.text;
    setState(() {
      greetingMessage = "Hello " + username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //greeting message
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Write Name"),
            ),
            ElevatedButton(onPressed: greetUser, child: Text("Tap"))
          ],
        ),
      ),
    );
  }
}
