import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/appstyle.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
      const Expanded(child: SizedBox()),
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(241, 241, 241, 241)),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 24,
            )
          ],
        ),
      )
    ]);
  }
}
