import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'package:test_app_dicoding/tourism_place.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wisata Bandung. Size: ${MediaQuery.of(context).size.width}',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              // when the card is pressed, do this
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    place: place,
                  );
                }),
              );
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
