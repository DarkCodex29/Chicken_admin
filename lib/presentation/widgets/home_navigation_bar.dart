import 'package:chicken_admin/config/router/app_router.dart';
import 'package:chicken_admin/presentation/screens/client/client_page.dart';
import 'package:chicken_admin/presentation/screens/product/product_page.dart';
import 'package:chicken_admin/presentation/screens/home/home_page.dart';
import 'package:chicken_admin/presentation/screens/balance/balance_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class HomeNavigationBar extends StatelessWidget {
  final int index;

  const HomeNavigationBar({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomePage(),
      const ClientPage(),
      const ProductPage(),
      const BalancePage(),
    ];
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        title: const Text('Usuario'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: _NavigationBar(
        initialIndex: index,
      ),
    );
  }
}

class _NavigationBar extends StatefulWidget {
  final int initialIndex;

  const _NavigationBar({
    required this.initialIndex,
    Key? key,
  }) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<_NavigationBar> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      color: Colors.lightBlue.shade200,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          appRouter.go(index == 0 ? '/' : index == 1 ? '/client' : index == 2 ? '/product' : '/balance');
        });
      },
      items: const [
        CurvedNavigationBarItem(
          child: Icon(Icons.home),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.perm_contact_calendar),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.apple),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.poll),
        ),
      ],
    );
  }
}

