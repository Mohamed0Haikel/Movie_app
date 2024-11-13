import 'package:flutter/material.dart';

class CustomMovieImage extends StatelessWidget {
  final String imgPath;
  const CustomMovieImage({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        // height: MediaQuery.of(context).size.height * .25,
        // width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(
              imgPath,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
