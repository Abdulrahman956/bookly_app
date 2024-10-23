import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SemilerBooksLIstView extends StatelessWidget {
  const SemilerBooksLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomBooksItem(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzwgSvmi2xjA-0_-p_bRWF2wenBAyaW9_AQQ&s',
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
