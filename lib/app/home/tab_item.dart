import 'package:flutter/material.dart';

enum TabItem { home, qa, account }

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.home: TabItemData(title: 'Home', icon: Icons.home),
    TabItem.qa: TabItemData(title: 'Tech Trend', icon: Icons.whatshot_outlined),
    TabItem.account: TabItemData(title: 'Account', icon: Icons.manage_accounts),
  };
}
