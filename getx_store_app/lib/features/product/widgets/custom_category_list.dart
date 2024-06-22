import 'package:flutter/material.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 8.0),
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue.withOpacity(0.1),
              ),
              child: Center(
                  child: Text(
                '🍰 Dessert',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )),
            );
          },
        ));
  }
}
