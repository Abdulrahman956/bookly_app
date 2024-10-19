import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';
import 'custom_text_feild.dart';
import 'result_search_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: ResultSearchListView()),
          ],
        ),
      ),
    );
  }
}
