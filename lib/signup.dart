import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: height * 0.04),
              const Text(
                "Welcome in our shop ",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF363f93),
                ),
              ),
              const Text(
                "Here you can have chats and discuss with us",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF363f93),
                ),
              ),
              SizedBox(height: height * 0.05),
              TextFormField(
                decoration: const InputDecoration(labelText: "Enter Your Name"),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                    return 'Please Enter Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * 0.05),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "Enter Your Phone Number"),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
                    return 'Please Enter vaild Number';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * 0.05),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "Enter Your Email"),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Please Enter Vaild Email';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      
                    
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Processing Your Data')),
                          );
                        }
                      },
                      child: const Text("SignUp"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("LogIn tests"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
