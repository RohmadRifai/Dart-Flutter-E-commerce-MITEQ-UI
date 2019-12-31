import 'package:flutter/material.dart';
import 'package:miteq/models/supply_models.dart';

class SemuaPenawaran extends StatefulWidget {
  @override
  _SemuaPenawaranState createState() => _SemuaPenawaranState();
}

class _SemuaPenawaranState extends State<SemuaPenawaran> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Container(
        height: double.infinity,
        //color: Colors.blue,
        child: ListView.builder(
          itemCount: supplies.length,
          itemBuilder: (BuildContext context, int index) {
            Supply supply = supplies[index];
            return Container(
              //margin: EdgeInsets.only(bottom: 10),
              //color: Colors.red,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              supply.jenisLobster,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              supply.berat,
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Text(
                            supply.tanggal,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 1),
                        child: OutlineButton(
                          onPressed: () => print('Tekan Supply'),
                          borderSide: BorderSide(
                              color: Theme.of(context).accentColor, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Supply',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
