import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PersistentTabController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null ? item.activeColorPrimary : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title,
                style: TextStyle(color: isSelected ? (item.activeColorSecondary == null ? item.activeColorPrimary : item.activeColorSecondary) : item.inactiveColorPrimary, fontWeight: FontWeight.w400, fontSize: 12.0),
              )),
            ),
          )
        ],
      ),
    );
  }
}
