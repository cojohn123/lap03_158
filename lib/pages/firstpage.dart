import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginForKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wanasree App"),
        backgroundColor: Color.fromARGB(255, 7, 255, 139),
      ),
      body: Form(
        key: _loginForKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your username";
                      }
                      return null;
                    },
                    controller: _usernameCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "User name",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.pink)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      return null;
                    },
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: _passwordCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.pink)))),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginForKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
