import 'package:flutter/material.dart';

class DemoPageView extends StatefulWidget {
  const DemoPageView({Key? key}) : super(key: key);

  @override
  State<DemoPageView> createState() => _DemoPageViewState();
}

class _DemoPageViewState extends State<DemoPageView> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Container(color: Colors.redAccent,),
          Container(color: Colors.greenAccent,),
          Container(color: Colors.black38,),
          Container(color: Colors.amberAccent,),
        ],
      ),
    );
  }
}
