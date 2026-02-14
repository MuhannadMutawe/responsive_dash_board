import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widget/active_and_inactive_items.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActiveIndex,
  });

  final DrawerItemModel drawerItem;
  final bool isActiveIndex;

  @override
  Widget build(BuildContext context) {
    return isActiveIndex
        ? ActiveDrawerItem(drawerItem: drawerItem)
        : InActiveDrawerItem(drawerItem: drawerItem);
  }
}
