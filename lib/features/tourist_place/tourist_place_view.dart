import 'package:flutter/material.dart';
import 'package:team_project/core/themes/colors.dart';

class TouristPlaceView extends StatelessWidget {
  const TouristPlaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.infinity,
        margin: const EdgeInsetsDirectional.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: MyColors.mainColor,
          borderRadius: BorderRadius.circular(30),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.network(
                'https://storage.kempinski.com/cdn-cgi/image/w=585,h=775,f=auto,g=auto,fit=cover/ki-cms-prod/images/1/5/6/5/95651-1-eng-GB/42f62d3b931b-73658019_4K.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Pyramids',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
      itemCount: 10,
    );
  }
}
