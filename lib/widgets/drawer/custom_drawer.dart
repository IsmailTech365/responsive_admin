import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer/drawer_item_list.dart';
import 'package:responsive_dash_board/widgets/drawer/user_info_list_tile.dart';

import '../../models/user_info_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * .7,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                  userInfoModel: UserInfoModel(
                      image: Assets.imagesAvatar3,
                      title: 'Ismail Alsmail',
                      subTitle: "Flutter Developer")),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            DrawerItemList(),
            SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Expanded(child: SizedBox(height: 20)),
                    InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: 'Setting System',
                          image: Assets.imagesSettings),
                    ),
                    InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: 'Logout account', image: Assets.imagesLogout),
                    ),
                    SizedBox(
                      height: 48,
                    )
                  ],
                )),
          ],
        ));
  }
}
