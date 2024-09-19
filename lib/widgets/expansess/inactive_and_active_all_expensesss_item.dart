// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/appstyle.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0XFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0XFFFAFAFA),
                child: SvgPicture.asset(itemModel.image),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
          const SizedBox(height: 36),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
              // side: const BorderSide(
              //   width: 1,
              //   color: Color(0xFF4DB7F2),
              // ),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.10000000149011612),
                child: SvgPicture.asset(itemModel.image, color: Colors.white),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.arrow_forward_ios, color: Colors.white))
            ],
          ),
          const SizedBox(height: 36),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(itemModel.date,
              style: AppStyles.styleRegular14(context)
                ..copyWith(
                  color: const Color(0xFFFAFAFA),
                )),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
