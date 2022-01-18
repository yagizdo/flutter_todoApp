import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {Key? key,
      required this.title,
      required this.desc,
      required this.category})
      : super(key: key);
  final String title;
  final String desc;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f9f6e8'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top : 50, left: 10.0),
            child: categoryText(category, context),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 20, left: 14.0),
            child:
            Column(children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top :30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: const Padding(
                        padding: EdgeInsets.only(top : 30,left : 10.0),
                        child: Text(
                          'Description',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 15),
                        child: Text(desc.isEmpty ? 'Desc is empty' : desc,style: const TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
Widget categoryText(String categoryName, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 30,
    width: MediaQuery.of(context).size.width / 4,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: HexColor('#d3e3f2'),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Center(
          child: Text(
        categoryName,
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 10),
      )),
    ),
  );
}