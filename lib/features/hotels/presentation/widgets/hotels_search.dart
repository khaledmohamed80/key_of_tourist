import 'package:flutter/material.dart';
import 'package:team_project/core/themes/colors.dart';

class HotelsSearch extends StatelessWidget {
  const HotelsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: MediaQuery.of(context).size.width * 0.5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {},
        onFieldSubmitted: (value) {},
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          label: const Text(
            'search',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          filled: true,
          fillColor: MyColors.mainColor,
          hoverColor: Colors.black,
          focusColor: Colors.black,
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
