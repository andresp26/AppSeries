import 'package:flutter/material.dart';

import '../detailspage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: new Container(
        child: new ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/flix.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Todo sobre Series',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(width: 30),
                      SizedBox(width: 30),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100.0,
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                            text:
                                'Comedy  •  Netflix Original'),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20.0,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.white70,
                        onPressed: () {},
                        child: new Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add, color: Colors.white),
                              onPressed: () {
                                _showToast(context);
                              },
                            ),
                            Text('Mi Lista')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(data: 'Luci')),
                          );
                        },
                        child: new Row(
                          children: <Widget>[
                            Icon(Icons.play_arrow),
                            Text(
                              'Ver',
                              style: TextStyle(fontFamily: 'Montserrat'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        textColor: Colors.white70,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(data: 'Luci')),
                          );
                        },
                        child: new Column(
                          children: <Widget>[
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            Text('Info')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: new AssetImage('assets/images/luci.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.multiply),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 10.0, height: 10.0),
                Text.rich(
                  TextSpan(text: 'Top'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Stra')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/stranger.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Luci')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/luci.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Hoc')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/hox.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                ],
              ),
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 10.0, height: 10.0),
                Text.rich(
                  TextSpan(text: 'Series'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Luci')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/luci.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Alc')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/alc.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Hoc')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/hox.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Stra')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/stranger.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(data: 'Casa')),
                      );
                    },
                    child: Container(
                      child: Image.asset('assets/images/casapapel.jpg'),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 130.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to My List'),
        action: SnackBarAction(
            textColor: Colors.white54,
            label: 'OK',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
  }
