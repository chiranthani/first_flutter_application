import 'package:flutter/material.dart';

class RatingPage extends StatefulWidget {
  RatingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Reviews',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ]),
    );
  }

  static final fullStar = Icon(Icons.star, color: Colors.yellow[500]);
  static final halfStar = Icon(
    Icons.star_half,
    color: Colors.yellow[500],
  );

  static final starRow = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        fullStar,
        fullStar,
        fullStar,
        halfStar,
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                _title(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                _buildCard('images/people.png', '10/01/2020'),
                _buildCard('images/people.png', '12/01/2020'),
                _buildCard('images/people.png', '15/01/2020'),
                _buildCard('images/people.png', '02/02/2020'),
                _buildCard('images/people.png', '10/02/2020'),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    )));
  }

  //CardView
  Card _buildCard(String path, String date) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    path,
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: starRow,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          date,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Item delivered in good condition.',
                      ),
                      Text(' I will recommend to other buyers.')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
