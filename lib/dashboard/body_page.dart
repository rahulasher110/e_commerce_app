import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainDashboardBodyPage extends StatefulWidget {
  const MainDashboardBodyPage({super.key});

  @override
  State<MainDashboardBodyPage> createState() => _MainDashboardBodyPageState();
}

class _MainDashboardBodyPageState extends State<MainDashboardBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 240,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blue),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
