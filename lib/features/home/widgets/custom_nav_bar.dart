import 'package:flutter/material.dart';
import 'package:team_project/core/themes/colors.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(
        start: 15,
        end: 15,
        bottom: 15,
        top: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        backgroundColor: MyColors.mainColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hotel,
            ),
            label: 'Hotels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
            ),
            label: 'Tourist Place',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.train,
            ),
            label: 'Transport',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_page_outlined,
            ),
            label: 'Contact',
          ),
        ],
        elevation: 0,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
