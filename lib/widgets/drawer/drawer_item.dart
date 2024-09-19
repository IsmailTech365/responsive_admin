import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/widgets/drawer/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          );
  }
}
