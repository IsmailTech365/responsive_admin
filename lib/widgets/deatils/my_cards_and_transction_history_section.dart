import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_containar.dart';
import 'package:responsive_dash_board/widgets/deatils/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/deatils/transction_history.dart';


class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainar(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TrasnctionHistory(),
      ],
    ));
  }
}