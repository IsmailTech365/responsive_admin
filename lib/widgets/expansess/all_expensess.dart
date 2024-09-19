import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_containar.dart';
import 'package:responsive_dash_board/widgets/expansess/all_expensess_header.dart';
import 'package:responsive_dash_board/widgets/expansess/all_expensess_items_list_view.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainar(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
