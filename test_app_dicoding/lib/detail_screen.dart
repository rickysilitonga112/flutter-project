import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app_dicoding/components/text_icon.dart';
import 'package:test_app_dicoding/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({required this.place});

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
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
