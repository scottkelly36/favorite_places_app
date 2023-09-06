//  packages
import 'package:favorite_places_app/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  widgets
import 'package:favorite_places_app/widgets/places_list.dart';
//  screens
import 'package:favorite_places_app/screens/add_place_screen.dart';

class PlacesListScreen extends ConsumerWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(
        places: userPlaces,
      ),
    );
  }
}
