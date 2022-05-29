import 'package:flutter/material.dart';
import 'package:superapp/models/core/recipe.dart';

class StepTile extends StatelessWidget {
  final String data;
  final String index;

  StepTile({required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   data.step as String,
          //   style: const TextStyle(
          //       color: Colors.black,
          //       fontFamily: 'Montserrat',
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600),
          // ),
          (data != null)
              ? Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    '$index. $data',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        height: 150 / 100),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
