import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/appstyle.dart';
import 'package:responsive_dash_board/widgets/quickinvoice/latest_transction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransctionListView()
      ],
    );
  }
}