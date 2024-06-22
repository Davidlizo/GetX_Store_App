import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 170,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/OIP.jpg'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.withOpacity(0.1)),
      child: Stack(
        children: [
          Positioned(
            left: 15,
            bottom: 14,
            child: Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue),
              child: Center(
                  child: Text(
                'Order Now!',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
