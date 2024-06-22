import 'package:flutter/material.dart';

class ProductInfoCard extends StatelessWidget {
  const ProductInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 90,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fat',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                '15g',
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Container(
          width: 80,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Protein',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                '20g',
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Container(
          width: 80,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Calcium',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                '126mg',
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Container(
          width: 80,
          height: 90,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Iron',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                '2.71mg',
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ],
    );
  }
}
