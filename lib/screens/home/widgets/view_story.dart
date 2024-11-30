import 'package:flutter/material.dart';
import '../../../resourses/colors_manager.dart';

class ViewStory extends StatelessWidget {
  const ViewStory({super.key, required this.userImg, required this.storyImg});
  final String userImg, storyImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.6292,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                storyImg,
                width: 122,
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: CircleAvatar(
            backgroundColor: ColorsManager.blue,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundImage: AssetImage(userImg),
              ),
            ),
          ),
        )
      ],
    );
  }
}
