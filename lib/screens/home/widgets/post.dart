import 'package:flutter/material.dart';
import '../models/post_data.dart';
import 'post_body.dart';
import 'post_footer.dart';
import 'post_header.dart';

class Post extends StatelessWidget {
  final PostData postData;
  const Post({
    super.key,
    required this.postData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Header(
                  postData: postData,
                ),
              )),
          Expanded(
              flex: 7,
              child: Body(
                postData: postData,
              )),
          const Expanded(child: Footer()),
        ],
      ),
    );
  }
}
