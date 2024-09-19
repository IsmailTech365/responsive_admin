import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_containar.dart';
import 'package:responsive_dash_board/widgets/quickinvoice/latest_transction.dart';
import 'package:responsive_dash_board/widgets/quickinvoice/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quickinvoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainar(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
