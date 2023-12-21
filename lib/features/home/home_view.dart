import 'package:flutter/material.dart';
import 'package:team_project/features/contact/contact_view.dart';
import 'package:team_project/features/home/widgets/custom_nav_bar.dart';
import 'package:team_project/features/hotels/presentation/hotels_view.dart';
import 'package:team_project/features/tourist_place/tourist_place_view.dart';
import 'package:team_project/features/transport/transport_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> screens = [
    const HotelsView(),
    const TouristPlaceView(),
    const TransportView(),
    //ToDo : Contact View
    const ContactView(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: CustomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
