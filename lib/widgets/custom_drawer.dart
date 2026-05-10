import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    UserInfoModel userInfoModel = UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    );
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(userInfoModel: userInfoModel),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          const DrawerItemsListView(),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
