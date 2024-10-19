import 'package:flutter/material.dart';

import 'custom_botton.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              fontSize: 18,
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: r'19.9$',
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 18,
              backgroundColor: Color(0xffF37350),
              textColor: Colors.white,
              text: 'Free Preview',
              borderRadius: BorderRadius.horizontal(right: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
