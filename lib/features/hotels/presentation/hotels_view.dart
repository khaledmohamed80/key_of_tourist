import 'package:flutter/material.dart';
import 'package:team_project/core/themes/colors.dart';
import 'package:team_project/features/hotels/presentation/widgets/hotels_box.dart';
import 'package:team_project/features/hotels/presentation/widgets/hotels_grid_view.dart';
import 'package:team_project/features/hotels/presentation/widgets/hotels_search.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20),
              HotelsSearch(),
              SizedBox(height: 20),
              HotelsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
