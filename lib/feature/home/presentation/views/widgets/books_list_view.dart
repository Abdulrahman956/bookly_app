import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_book_cubit/cubit.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_book_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circlar_indicator.dart';
import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit, FeaturedStates>(
      builder: (context, state) {
        if (state is FeaturedSuccess) {
          return Container(
            height: MediaQuery.of(context).size.height * .30,
            padding: const EdgeInsets.only(left: 20),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBooksItem(
                imageUrl:
                    state.bookModel[index].volumeInfo.imageLinks.thumbnail,
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: state.bookModel.length,
            ),
          );
        } else if (state is FeaturedFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
