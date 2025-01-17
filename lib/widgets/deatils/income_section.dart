import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_containar.dart';
import 'package:responsive_dash_board/widgets/deatils/income_section_body.dart';
import 'package:responsive_dash_board/widgets/deatils/income_section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainar(
        child: Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}