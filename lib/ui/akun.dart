import 'package:flutter/material.dart';
import 'package:miteq/ui/login.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Akun Saya',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nama',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'nama'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'email'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Kata Sandi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'kata sandi'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'No. Handphone',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'no. handphone'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    //height: 100,
                    width: 150,
                    child: FlatButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Ubah Data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    //height: 100,
                    width: 150,
                    child: FlatButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Keluar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
