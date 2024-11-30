import 'package:flutter/material.dart';
import 'post_section.dart';
import 'story_bar.dart';
import 'write_post.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      // we must ensure only one scroll comming from NestedScrollView
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: WritePost()),
        SliverToBoxAdapter(child: Divider()),
        SliverToBoxAdapter(child: StoryBar()),
        SliverToBoxAdapter(child: Divider()),
        PostsSection(),
      ],
    );
  }
}
