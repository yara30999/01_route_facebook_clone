import 'package:flutter/material.dart';
import '../../../resourses/assets_manager.dart';
import '../models/post_data.dart';
import 'post.dart';

class PostsSection extends StatelessWidget {
  const PostsSection({
    super.key,
  });

  List<PostData> get posts => [
        PostData('9', 'Route', PngAssets.routeWhite),
        PostData('10', 'Yara', PngAssets.user),
        PostData('3', 'Noor', PngAssets.user2),
        PostData('5', 'Route', PngAssets.routeBlue),
        PostData('7', 'Ali', PngAssets.stroy3),
        PostData('12', 'Ahmed', PngAssets.stroy2),
        PostData('2', 'Route', PngAssets.routeWhite),
      ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Post(postData: posts[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
