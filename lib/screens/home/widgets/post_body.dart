import 'package:flutter/material.dart';
import '../models/post_data.dart';

class Body extends StatelessWidget {
  final PostData postData;

  const Body({super.key, required this.postData});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      postData.img,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
