import 'package:flutter/material.dart';

class AddProductTextfield extends StatelessWidget {
  const AddProductTextfield({
    super.key,
    required this.nameController,
    required this.descriptionController,
    required this.priceController,
  });

  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue.withOpacity(0.1),
            hintText: 'Name',
            contentPadding: EdgeInsets.all(8.0),
            hintStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
            focusColor: Colors.red,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.1))),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.blue.withOpacity(0.1)),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        TextField(
          controller: descriptionController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue.withOpacity(0.1),
            hintText: 'Description',
            contentPadding: EdgeInsets.all(8.0),
            hintStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
            focusColor: Colors.red,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.1))),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.blue.withOpacity(0.1)),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        TextField(
          controller: priceController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue.withOpacity(0.1),
            hintText: 'Price',
            contentPadding: EdgeInsets.all(8.0),
            hintStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.1))),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.blue.withOpacity(0.1)),
            ),
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}