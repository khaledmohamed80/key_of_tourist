import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HotelsGridView extends StatefulWidget {
  const HotelsGridView({Key? key}) : super(key: key);

  @override
  State<HotelsGridView> createState() => _HotelsGridViewState();
}

class _HotelsGridViewState extends State<HotelsGridView> {
  final instance = FirebaseFirestore.instance;
  List hotels = [];

  getHotels() {
    instance.collection('hotels').snapshots().listen((event) {
      setState(() {
        hotels = event.docs;
      });
    });
  }

  @override
  void initState() {
    getHotels();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: MediaQuery.of(context).size.height * 0.2,
      ),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02,
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(
                    image: NetworkImage(
                      hotels[index]['image'],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              hotels[index]['name'],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      itemCount: hotels.length,
    );
  }
}
