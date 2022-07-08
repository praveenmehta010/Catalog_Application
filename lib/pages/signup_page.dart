import 'package:catalog_application/utils/routes.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool onClickSignUP = false;
  final _formkey = GlobalKey<FormState>();
  // const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(      
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://imgs.search.brave.com/0pufKtwyV8Gksnagz4O_UprbsTb4jXrYYy3duyWfsf0/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJ0YWcuY29t/L3dhbGxwYXBlci9m/dWxsLzAvNy8wLzg5/NDEzNi1iZXN0LWNv/b2wtbmFydXRvLWJh/Y2tncm91bmRzLTE0/NDB4MjU2MC5qcGc"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "User Name Can Not be Empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter Your Name",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 4) {
                            return "Password can't be empty or less than 4 characters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password",
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          splashColor: Colors.deepOrange,
                          onTap: () async {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                onClickSignUP = true;
                                // print(onClickSignUP);
                              });
                              await Future.delayed(Duration(seconds: 1));
                              Navigator.pushNamed(
                                  context, MyRoutes.homePageRoute);
                              setState(() {
                                onClickSignUP = false;
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: onClickSignUP ? 50 : 150,

                            // color: Colors.deepPurple,
                            alignment: Alignment.center,
                            child: onClickSignUP
                                ? Icon(Icons.done)
                                : Text(
                                    "Sign_up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textScaleFactor: 1.3,
                                  ),
                            // decoration: BoxDecoration(
                            //     ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),      
    );
  }
}
