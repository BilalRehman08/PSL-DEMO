import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psl/home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email;
  String _password;
  bool loginacc = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      print("valid");
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } on FirebaseAuthException catch (e) {
        setState(() {
          loginacc = true;
        });
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('REGISTER PAGE')),
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/psl.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 4,
                  child: TextFormField(
                      decoration: InputDecoration(
                        errorText: loginacc ? 'Invalid Email' : null,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter some text';
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _email = value.trim();
                        });
                      }),
                ),
                SizedBox(height: 10.0),
                Material(
                  elevation: 4,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                    ),
                    validator: (value) {
                      if (value.isEmpty) return 'Please enter some text';
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                Material(
                  elevation: 4,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Contact',
                    ),
                    validator: (value) {
                      if (value.isEmpty) return 'Please enter some text';
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                Material(
                  elevation: 4,
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        errorText: loginacc ? 'Password too small' : null,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter some text';
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _password = value.trim();
                        });
                      }),
                ),
                SizedBox(height: 10.0),
                Container(
                    height: 45.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        signup();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text('REGISTER',
                          style: TextStyle(color: Colors.white)),
                    )),
                Divider(height: 40.0, thickness: 0.70, color: Colors.green),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
