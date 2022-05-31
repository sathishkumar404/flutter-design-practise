import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),

          child: Positioned(
            child: Column(children: <Widget>[
              NewWidget(),
              SizedBox(height:32),
              newMethod(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 16, bottom: 0),
                //   padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Password'),
                ),
              ),
              FlatButton(
                child: Text('Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15)),
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 230,
              ),
                  
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'New to App?',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text("REGISTER",
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ]),
              )
            ]),
          )),
    );
  }

  Padding newMethod() {
    return Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 190.0,
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}



