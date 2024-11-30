import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resourses/assets_manager.dart';
import '../../../resourses/colors_manager.dart';
import '../../../resourses/styles_manager.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key, required this.userImg});
  final String userImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.6292,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 12,
                    child: Image.asset(
                      userImg,
                      width: 122,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: ColorsManager.white,
                      alignment: Alignment.center,
                      child: Text(
                        'Create \na Story ',
                        textAlign: TextAlign.center,
                        style: Styles.style12Bold(),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Positioned(
          left: 42,
          bottom: 50,
          child: CircleAvatar(
            backgroundColor: ColorsManager.white,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: CircleAvatar(
                  backgroundColor: ColorsManager.blue,
                  child: SvgPicture.asset(SvgAssets.plusWhiteIcon)),
            ),
          ),
        )
      ],
    );
  }
}
