import 'package:flutter/material.dart';
import 'package:miteq/models/kolam_models.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SemuaKolam extends StatefulWidget {
  @override
  _SemuaKolamState createState() => _SemuaKolamState();
}

class _SemuaKolamState extends State<SemuaKolam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Container(
        height: double.infinity,
        //color: Colors.blue,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: kolams.length,
          itemBuilder: (BuildContext context, int index) {
            Kolam kolam = kolams[index];
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
                              kolam.kolamjenisLobster,
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
                              kolam.masaBudidaya,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          LinearPercentIndicator(
                            width: 200,
                            lineHeight: 8,
                            percent: kolam.persentase,
                            progressColor: Colors.blue,
                            //backgroundColor: Colors.white,
                            padding: EdgeInsets.only(left: 5),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 1),
                        child: OutlineButton(
                          onPressed: () => print('Tekan Detail'),
                          borderSide: BorderSide(
                              color: Theme.of(context).accentColor, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Detail',
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
