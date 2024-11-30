import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resourses/assets_manager.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(SvgAssets.heartIcon),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(SvgAssets.commentIcon),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(SvgAssets.shareIcon),
          onPressed: () {},
        ),
        const Spacer(),
        IconButton(
          icon: SvgPicture.asset(SvgAssets.saveIcon),
          onPressed: () {},
        ),
      ],
    );
  }
}
