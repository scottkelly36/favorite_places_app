//  packages
import 'package:flutter/material.dart';
//  models
import 'package:favorite_places_app/models/place.dart';

class PlacesDetailScreen extends StatelessWidget {
  const PlacesDetailScreen({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Center(
        child: Text(place.title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground)),
      ),
    );
  }
}
