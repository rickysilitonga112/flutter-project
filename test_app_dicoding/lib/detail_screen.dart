import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app_dicoding/components/text_icon.dart';
import 'package:test_app_dicoding/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return constraints.maxWidth > 800
          ? DetailWebPage(place: place)
          : DetailMobilePage(place: place);
    });
  }
}

class DetailWebPage extends StatefulWidget {
  DetailWebPage({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wisata Bandung',
              style: TextStyle(fontFamily: 'Staatliches', fontSize: 32),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(widget.place.imageAsset),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(bottom: 16),
                        child: Scrollbar(
                          isAlwaysShown: true,
                          controller: _scrollController,
                          interactive: true,
                          child: ListView(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            children: widget.place.imageUrls.map((url) {
                              return Padding(
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(url)),
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: Text(
                              widget.place.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Staatliches',
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_today),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(widget.place.openDays)
                                ],
                              ),
                              FavoriteButton(),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(
                                width: 8,
                              ),
                              Text(widget.place.ticketPrice)
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.monetization_on),
                              SizedBox(
                                width: 8,
                              ),
                              Text(widget.place.ticketPrice)
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.place.description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Oxygen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({
    Key? key,
    required this.place,
  }) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Wisata Bandung'),
            FavoriteButton(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(place.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Staatliches',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextIcon(place.openDays, Icons.calendar_today),
                  TextIcon(place.openTime, Icons.access_time),
                  TextIcon(place.ticketPrice, Icons.monetization_on),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BottomImage(
                    place.imageUrls[0],
                  ),
                  BottomImage(
                    place.imageUrls[1],
                  ),
                  BottomImage(
                    place.imageUrls[2],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomImage extends StatelessWidget {
  final String _url;

  BottomImage(this._url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.network(_url),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
