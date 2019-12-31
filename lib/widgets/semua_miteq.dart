import 'package:flutter/material.dart';
import 'package:miteq/models/miteq_models.dart';
import 'package:miteq/ui/miteq_screen.dart';

class SemuaMiteq extends StatefulWidget {
  @override
  _SemuaMiteqState createState() => _SemuaMiteqState();
}

class _SemuaMiteqState extends State<SemuaMiteq> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      //color: Colors.blue,
      child: ListView.builder(
        itemCount: miteqs.length,
        itemBuilder: (BuildContext context, int index) {
          Miteqs miteq = miteqs[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MiteqScreen(
                  miteqs: miteq,
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              height: 160,
              //color: Colors.red,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 200,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(70, 10, 10, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              miteq.namaMiteq,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'PPM          ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '${miteq.ppm}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      //fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'pH                   ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${miteq.ph}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Suhu Air      ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${miteq.suhuAir}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: 150,
                            width: 200,
                            image: AssetImage(
                                'assets/images/cara-budidaya-lobster.png'),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
