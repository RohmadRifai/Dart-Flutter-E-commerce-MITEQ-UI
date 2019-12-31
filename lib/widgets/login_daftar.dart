import 'package:flutter/material.dart';
import 'package:miteq/ui/botttom_navigation.dart';

class LoginDaftar extends StatefulWidget {
  @override
  _LoginDaftarState createState() => _LoginDaftarState();
}

class _LoginDaftarState extends State<LoginDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Daftar',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Nama'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Kata Sandi'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'No. Handphone'),
              ),
              SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation())),
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
