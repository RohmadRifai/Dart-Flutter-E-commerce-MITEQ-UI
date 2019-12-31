import 'package:flutter/material.dart';
import 'package:miteq/models/komoditas_models.dart';

class KomoditasScreen extends StatefulWidget {
  final Komoditass komoditass;

  KomoditasScreen({this.komoditass});

  @override
  _KomoditasScreenState createState() => _KomoditasScreenState();
}

class _KomoditasScreenState extends State<KomoditasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6),
                  ],
                ),
                child: Hero(
                  tag: widget.komoditass.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image(
                      image: AssetImage(widget.komoditass.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    widget.komoditass.namaLobster,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  Text(widget.komoditass.deskripsi),
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
                        '${widget.komoditass.lamaBudidaya}',
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
                        '${widget.komoditass.harga}',
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
