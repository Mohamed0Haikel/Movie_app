import 'package:flutter/material.dart';

import 'custom_movie_item.dart';

class SimilarMoviesList extends StatelessWidget {
  const SimilarMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            //TODO: Add image path
            // child: CustomMovieImage(),
          );
        },
      ),
    );
  }
}
