import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String userName = '';
  String userEmail = '';
  String s = 'const TextStyle(fontSize: 20.0)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Text("Welcome"),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white24,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    style: const TextStyle(fontSize: 20.0),
                    decoration: const InputDecoration(hintText: "User Name"),
                  ),
                  TextFormField(
                    controller: emailController,
                    style: const TextStyle(fontSize: 20.0),
                    decoration: const InputDecoration(hintText: "User Email"),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            userName = nameController.text;
                          });
                        }),
                        child: const Text("Sign up"),
                      ),
                      ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            userEmail = emailController.text;
                          });
                        }),
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
