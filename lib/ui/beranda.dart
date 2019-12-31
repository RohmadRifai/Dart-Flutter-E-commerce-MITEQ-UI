import 'package:flutter/material.dart';
import 'package:miteq/widgets/kolam.dart';
import 'package:miteq/widgets/penawaran.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          children: <Widget>[
            PenawaranSupply(),
            ListKolam(),
          ],
        ),
      ),
    );
  }
}
