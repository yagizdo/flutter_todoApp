import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/Models/todo.dart';
import 'package:todo_app/Widgets/DetailPage/todo_description.dart';

import '../Widgets/DetailPage/todo_info_section.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => LayoutBuilder(
        builder: (context, constraints) {
          print('width : ${constraints.maxWidth}');
          print('height : ${constraints.maxHeight}');
          return Scaffold(
            backgroundColor: HexColor('#F9F6E9'),
            body: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: TodoInfoSection(
                    todo: todo,
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: TodoDescription(
                      todo: todo,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
