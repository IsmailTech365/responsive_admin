import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'DashBoard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transctions', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'WalletAccount', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
                drawerItemModel: items[index], isActive: activeIndex == index),
          ),
        );
      },
    );
  }
}
