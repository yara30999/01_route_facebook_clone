import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resourses/assets_manager.dart';
import '../../resourses/colors_manager.dart';
import 'widgets/home_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<String> actionsIcons = const [
    SvgAssets.plusIcon,
    SvgAssets.searchIcon,
    SvgAssets.messengerIcon,
  ];
  List<String> bottomIcons = const [
    SvgAssets.homeIcon,
    SvgAssets.watchIcon,
    SvgAssets.storeIcon,
    SvgAssets.profileIcon,
    SvgAssets.notificationIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            // Important for enabling floating behavior for the headerSliverBuilder
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: false,
                  floating: true,
                  title: SvgPicture.asset(
                    SvgAssets.facebook,
                    width: 165,
                  ),
                  actions: List.generate(3, (index) {
                    return IconButton(
                      icon: SvgPicture.asset(
                        actionsIcons[index],
                      ),
                      onPressed: () {},
                    );
                  }),
                  bottom: TabBar(
                    // this will work i we used icons :(
                    // but we are using svg
                    labelColor: ColorsManager.blue,
                    unselectedLabelColor: ColorsManager.grey,
                    indicatorColor: ColorsManager.blue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    tabs: List.generate(6, (index) {
                      if (index == 5) {
                        // Sixth tab has profile image
                        return const Tab(
                            icon: CircleAvatar(
                          backgroundImage: AssetImage(PngAssets.user),
                        ));
                      } else {
                        return Tab(
                          icon: SvgPicture.asset(
                            bottomIcons[index],
                            colorFilter: ColorFilter.mode(
                              _selectedIndex == index
                                  ? ColorsManager.blue // Selected color
                                  : ColorsManager.grey, // Default color
                              BlendMode.srcIn,
                            ),
                          ),
                        );
                      }
                    }),
                  ),
                ),
              ];
            },
            body: TabBarView(
              // we must ensure only one scroll comming from NestedScrollView
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const HomeView(),
                _buildCustomScrollView('watch Content'),
                _buildCustomScrollView('market Content'),
                _buildCustomScrollView('profile Content'),
                _buildCustomScrollView('notification Content'),
                _buildCustomScrollView('settings Content'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Helper to create a scrollable content for each tab
  Widget _buildCustomScrollView(String content) {
    return CustomScrollView(
      // we must ensure only one scroll comming from NestedScrollView
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('$content Item #$index'),
              );
            },
            childCount: 90, // Number of items
          ),
        ),
      ],
    );
  }
}
