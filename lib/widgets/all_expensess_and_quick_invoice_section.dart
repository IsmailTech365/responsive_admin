import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expansess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quickinvoice/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}