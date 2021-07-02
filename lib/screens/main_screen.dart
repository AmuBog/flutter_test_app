import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes.gr.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter(
        routes: const [
          GroupTab1Router(),
          GroupTab2Router(),
          GroupTab3Router(),
        ],
        duration: const Duration(milliseconds: 400),
        builder: (context, child, animation) {
          final tabsRouter = context.tabsRouter;
          return Scaffold(
            body: FadeTransition(
              opacity: animation,
              child: child,
            ),
            bottomNavigationBar: buildBottomNavigationBar(context, tabsRouter),
          );
        },
      ),
    );
  }
}

BottomNavigationBar buildBottomNavigationBar(
    BuildContext context, TabsRouter tabsRouter) {
  return BottomNavigationBar(
    onTap: tabsRouter.setActiveIndex,
    currentIndex: tabsRouter.activeIndex,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.airline_seat_flat), label: 'Tab 1'),
      BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Tab 2'),
      BottomNavigationBarItem(icon: Icon(Icons.poll), label: 'Tab 3'),
    ],
  );
}
