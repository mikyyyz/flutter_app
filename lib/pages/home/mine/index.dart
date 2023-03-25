import 'package:flutter/material.dart';
import 'package:flutter_app/chat/ui/theme.dart';

class PageViewMine extends StatefulWidget {
  const PageViewMine({ Key? key }): super(key: key);

  @override
  State<PageViewMine> createState() => _PageViewMineState();
}

class _PageViewMineState extends State<PageViewMine> {
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的',
      home: Scaffold(
        appBar: AppBar(title: const Text('我的')),
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