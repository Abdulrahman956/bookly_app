import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BooksLIstView extends StatelessWidget {
  const BooksLIstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.kDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppAssets.testImage),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Book Title Book Title',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.titleMedium,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Book Author',
                        style: AppStyles.titleAuthor,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            r'19.9 $',
                            style: AppStyles.priceStyle,
                          ),
                          Spacer(),
                          BookRating(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
