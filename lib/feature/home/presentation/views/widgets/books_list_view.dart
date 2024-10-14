import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .28,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBooksItem(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
