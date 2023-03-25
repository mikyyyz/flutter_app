import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/community/index.dart';
import 'package:flutter_app/pages/home/index/index.dart';
import 'package:flutter_app/pages/home/message/index.dart';
import 'package:flutter_app/pages/home/mine/index.dart';

import 'package:flutter_app/chat/ui/theme.dart';
import 'package:get/get.dart';

// 首页pageview controler
class Home extends StatefulWidget {
  const Home({ Key? key }): super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int curPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          PageViewIndex(),
          PageViewCommunity(),
          PageViewMessage(),
          PageViewMine()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ChatTheme.primary,
        onPressed: () {
          Get.toNamed('/publish');
        },
      ),
    );
  }
}
