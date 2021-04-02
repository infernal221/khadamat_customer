import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(title: 'Provider Register '),
    );
  }
}

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 30.0, top: 30.0, right: 30.0, bottom: 10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/user_placeholder.png'),
            SizedBox(height: 15),
            TextFormField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: new InputDecoration(
                prefixIcon: Text('   +974 | '),
                prefixIconConstraints:
                BoxConstraints(minWidth: 0, minHeight: 0),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                hintText: "Enter phone number",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              cursorColor: Colors.black,
              inputFormatters: <TextInputFormatter>[],
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                hintText: "Service provider name",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              cursorColor: Colors.black,
              inputFormatters: <TextInputFormatter>[],
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                hintText: "Service provider name (Arabic)",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              cursorColor: Colors.black,
              inputFormatters: <TextInputFormatter>[],
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                hintText: "Email address",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              cursorColor: Colors.black,
              inputFormatters: <TextInputFormatter>[],
              obscureText: true,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        color: Colors.lightBlue,
        child: Center(
          child: Text(
            "Continue",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
