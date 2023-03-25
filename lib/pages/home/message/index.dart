import 'package:flutter/material.dart';
//import 'package:flutter_app/chat/ui/theme.dart';

class PageViewMessage extends StatefulWidget {
  const PageViewMessage({ Key? key }): super(key: key);

  @override
  State<PageViewMessage> createState() => _PageViewMessageState();
}

class _PageViewMessageState extends State<PageViewMessage> {
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '消息',
      home: Scaffold(
        appBar: AppBar(title: const Text('消息')),
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