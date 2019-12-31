import 'package:flutter/material.dart';
import 'package:miteq/models/komoditas_models.dart';
import 'package:miteq/ui/komoditas_screen.dart';

class SemuaKomoditas extends StatefulWidget {
  @override
  _SemuaKomoditasState createState() => _SemuaKomoditasState();
}

class _SemuaKomoditasState extends State<SemuaKomoditas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      //color: Colors.blue,
      child: ListView.builder(
        itemCount: komoditas.length,
        itemBuilder: (BuildContext context, int index) {
          Komoditass komoditass = komoditas[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => KomoditasScreen(
                  komoditass: komoditass,
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              height: 270,
              //color: Colors.red,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    bottom: 15,
                    child: Container(
                      width: 300,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              komoditass.namaLobster,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.av_timer,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${komoditass.lamaBudidaya}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'hari',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    //fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 103,
                                ),
                                Text(
                                  'Rp',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${komoditass.harga}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '/ekor',
                                  style: TextStyle(
                                    color: Colors.grey,
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
                            height: 180,
                            width: 280,
                            image: AssetImage(komoditass.imageUrl),
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
