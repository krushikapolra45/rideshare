import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:rideshare/view/offer/offer_screen.dart';
import 'package:rideshare/view/profile/profile_screen.dart';
import 'package:rideshare/view/wallet/add_amount_screen.dart';
import 'package:rideshare/view/wallet/bank.dart';
import 'package:rideshare/view/wallet/wallet_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  // final String title;
  const BottomNavigationBarScreen({
    super.key,
  });

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationBarScreen> {
  List<TabItem> items = [
    TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    TabItem(
      icon: Icons.search_sharp,
      title: 'Shop',
    ),
    TabItem(
      icon: Icons.favorite_border,
      title: 'Wishlist',
    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,
      title: 'Cart',
    ),
    TabItem(
      icon: Icons.account_box,
      title: 'profile',
    ),
  ];
  int currentIndex = 0;
  List<Widget> ScreenList = [
    const ProfileScreen(),
    const OfferScreen(),
    const AddAmountScreen(),
    const Bank(),
    const WalletScreen(),
  ];

  double height = 30;
  Color colorSelect = const Color(0XFF0686F8);
  Color color = const Color(0XFF7AC0FF);
  Color color2 = const Color(0XFF96B1FD);
  Color bgColor = const Color(0XFF1752FE);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BottomBarInspiredOutside(
              items: items,
              backgroundColor: bgColor,
              color: color2,
              colorSelected: Colors.white,
              indexSelected: currentIndex,
              onTap: (int index) => setState(() {
                currentIndex = index;
                ScreenList[currentIndex];
              }),
              top: -25,
              animated: true,
              itemStyle: ItemStyle.hexagon,
              chipStyle: const ChipStyle(drawHexagon: true),
            ),
          ],
        ),
      ),
    );
  }
}
