import 'package:e_commerce_app/dashboard/body_page.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({super.key});

  @override
  State<MainDashboardPage> createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'India',
                        size: 20,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          SmallText(text: 'rahul'),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 16,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const MainDashboardBodyPage()
        ],
      ),
    ));
  }
}
