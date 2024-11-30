import 'package:flutter/material.dart';

import '../../../resourses/assets_manager.dart';
import '../../../resourses/colors_manager.dart';

class WritePost extends StatelessWidget {
  const WritePost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(PngAssets.user),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintText: 'What’s in Your Mind?',
                // Removes the border
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            )),
            Icon(
              Icons.image,
              color: ColorsManager.green,
            )
          ],
        ),
      ),
    );
  }
}
