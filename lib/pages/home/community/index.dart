import 'package:flutter/material.dart';
import 'package:flutter_app/chat/ui/theme.dart';

// 社区
class PageViewCommunity extends StatefulWidget {
  const PageViewCommunity({ Key? key }) : super(key: key);

  @override
  State<PageViewCommunity> createState() => _PageViewCommunityState();
}

class _PageViewCommunityState extends State<PageViewCommunity> {
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '社区',
      home: Scaffold(
        appBar: AppBar(title: const Text('社区')),
        body: const Center(
          child: TooltipSample(),
        ),
      ),
    );
  }
}

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'I am a Tooltip',
      child: Text('Hover over the text to show a tooltip.'),
    );
  }
}