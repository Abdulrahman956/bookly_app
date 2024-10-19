import 'package:flutter/material.dart';

import 'custom_text_feild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFeild(),
            ),
          ],
        ),
      ),
    );
  }
}
