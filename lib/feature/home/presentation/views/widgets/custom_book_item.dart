import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.testImage),
          ),
        ),
      ),
    );
  }
}
