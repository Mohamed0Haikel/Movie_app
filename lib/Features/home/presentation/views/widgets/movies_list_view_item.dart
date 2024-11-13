import 'package:flutter/material.dart';
import '../../../../../constant.dart';
import '../../../../../core/services/api_service.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/movie_model.dart';
import '../movie_details_view.dart';
import 'movie_rating.dart';

class MoviesListViewItem extends StatelessWidget {
  final MovieModel movie;
  const MoviesListViewItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailsView(movie: movie),
          ),
        );
      },
      child: SizedBox(
        // height: 120.0,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                // height: MediaQuery.of(context).size.height * .25,
                // width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      '${ApiService.imgBaseURL}${movie.posterPath}',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      movie.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  // Text(
                  //   movie.releaseDate,
                  //   style: Styles.textStyle14,
                  // ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text(
                        movie.releaseDate,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
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
