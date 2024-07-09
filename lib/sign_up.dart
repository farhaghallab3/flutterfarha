import 'package:first_proj/log_in.dart';
import 'package:first_proj/role.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7d6d9a),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  color: Color(0xFF7d6d9a),
                  child: Image.asset(
                    'assets/images/final3.png',
                    height: 300,
                    width: 300,
                    scale: 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Times New Roman'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Times New Roman'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Times New Roman'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Times New Roman'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Times New Roman'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Person_Role(username: usernameController.text)),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Color(0xFF463d56),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color(0xFF463d56),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Already a user? Log In",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
