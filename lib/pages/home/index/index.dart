import 'package:flutter/material.dart';
import 'package:flutter_app/chat/ui/theme.dart';

class PageViewIndex extends StatefulWidget {
  const PageViewIndex({ Key? key }): super(key: key);

  @override
  State<PageViewIndex> createState() => _PageViewIndexState();
}

class _PageViewIndexState extends State<PageViewIndex> {
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      home: Scaffold(
        appBar: AppBar(title: const Text('首页')),
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