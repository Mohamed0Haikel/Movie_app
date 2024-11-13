import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/utils/styles.dart';
import 'movies_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedMovieListView(),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Movies',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: MoviesListView(),
        ),
      ],
    );
  }
}
