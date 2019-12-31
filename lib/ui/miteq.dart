import 'package:flutter/material.dart';
import 'package:miteq/widgets/semua_miteq.dart';

class Miteq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SemuaMiteq(),
      ),
    );
  }
}
