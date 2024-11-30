import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resourses/assets_manager.dart';
import '../../../resourses/colors_manager.dart';
import '../../../resourses/styles_manager.dart';
import '../models/post_data.dart';

class Header extends StatelessWidget {
  final PostData postData;
  const Header({super.key, required this.postData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(PngAssets.routeBlue),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                postData.name,
                style: Styles.style16Bold(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${postData.publishhour}h .',
                    style: Styles.style12Bold()
                        .copyWith(color: ColorsManager.grey),
                  ),
                  SvgPicture.asset(SvgAssets.earthIcon)
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: SvgPicture.asset(SvgAssets.moreIcon))
      ],
    );
  }
}
