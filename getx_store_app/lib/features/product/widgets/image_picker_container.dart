import 'package:flutter/material.dart';

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Icon(Icons.camera_alt),
    );
  }
}